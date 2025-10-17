#include "vtkwidget2d.h"
#include "smartdjdecoderregistration.h"
#include "utils.h"
#include "vtkwidget2dinteractorstyle.h"

#include <vtkCamera.h>
#include <vtkImageActor.h>
#include <vtkDataArray.h>
#include <vtkImageData.h>
#include <vtkPointData.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRendererCollection.h>
#include <vtkSmartPointer.h>

#include <QLoggingCategory>
#include <QString>

#include <algorithm>
#include <cmath>
#include <memory>
#include <sstream>
#include <stdexcept>

Q_LOGGING_CATEGORY(lcVtkWidget2D, "asclepios.gui.vtkwidget2d")

namespace
{
	class CodecRegistrationGuard
	{
	public:
		CodecRegistrationGuard()
		{
			asclepios::core::SmartDJDecoderRegistration::registerCodecs();
		}

		~CodecRegistrationGuard()
		{
			asclepios::core::SmartDJDecoderRegistration::cleanup();
		}

		CodecRegistrationGuard(const CodecRegistrationGuard&) = delete;
		CodecRegistrationGuard& operator=(const CodecRegistrationGuard&) = delete;
	};

	std::string formatHuValue(double hu)
	{
		std::ostringstream stream;
		stream.setf(std::ios::fixed);
		stream.precision(1);
		stream << hu;
		return stream.str();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::initImageReader()
{
	qCInfo(lcVtkWidget2D)
		<< "Initializing image volume for series"
		<< (m_series ? QString::fromStdString(m_series->getUID()) : QStringLiteral("<null>"))
		<< "image"
		<< (m_image ? QString::fromStdString(m_image->getSOPInstanceUID()) : QStringLiteral("<null>"));
	resetOverlay();
	if (!m_image)
	{
		qCCritical(lcVtkWidget2D) << "initImageReader aborted: image is null.";
		throw std::runtime_error("image is null!");
	}
	CodecRegistrationGuard guard;
	m_volume = m_image->getDicomVolume();
	if (!m_volume || !m_volume->ImageData)
	{
		qCCritical(lcVtkWidget2D) << "initImageReader failed: DICOM volume unavailable.";
		throw std::runtime_error("Failed to load image volume.");
	}
	qCInfo(lcVtkWidget2D)
		<< "Loaded DICOM volume with dimensions"
		<< m_volume->ImageData->GetDimensions()[0]
		<< m_volume->ImageData->GetDimensions()[1]
		<< m_volume->ImageData->GetDimensions()[2];
}

//-----------------------------------------------------------------------------
bool asclepios::gui::vtkWidget2D::initWidgetDICOM()
{
	if (!m_volume || !m_volume->ImageData)
	{
		qCCritical(lcVtkWidget2D) << "initWidgetDICOM aborted: missing volume/image data.";
		return false;
	}

	if (!m_dcmWidget)
	{
		m_dcmWidget = vtkSmartPointer<vtkWidgetDICOM>::New();
		m_dcmWidget->SetRenderWindow(m_renderWindows[0]);
		m_activeRenderWindow = m_dcmWidget->GetRenderWindow();
		if (auto* const renderWindow = m_dcmWidget->GetRenderWindow())
		{
			auto* const rendererCollection = renderWindow->GetRenderers();
			auto* const renderer = m_dcmWidget->GetRenderer();
			auto* const imageActor = m_dcmWidget->GetImageActor();
			if (renderer && rendererCollection &&
				rendererCollection->IsItemPresent(renderer) == 0)
			{
				renderWindow->AddRenderer(renderer);
				qCInfo(lcVtkWidget2D) << "Added renderer to render window.";
			}
			if (renderer && imageActor &&
				renderer->GetViewProps()->IsItemPresent(imageActor) == 0)
			{
				renderer->AddViewProp(imageActor);
				qCInfo(lcVtkWidget2D) << "Added image actor to renderer.";
			}
		}
		initRenderingLayers();
	}

	m_dcmWidget->setVolume(m_volume);
	return true;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::applyTransformation(const transformationType& t_type)
{
	if (!m_dcmWidget)
	{
		qCWarning(lcVtkWidget2D) << "applyTransformation() ignored - vtkWidgetDICOM missing.";
		return;
	}

	auto* const renderer = m_dcmWidget->GetRenderer();
	auto* const actor = m_dcmWidget->GetImageActor();

	switch (t_type)
	{
	case transformationType::flipHorizontal:
		if (actor)
		{
			double scale[3];
			actor->GetScale(scale);
			actor->SetScale(-scale[0], scale[1], scale[2]);
			actor->Modified();
		}
		break;
	case transformationType::flipVertical:
		if (actor)
		{
			double scale[3];
			actor->GetScale(scale);
			actor->SetScale(scale[0], -scale[1], scale[2]);
			actor->Modified();
		}
		break;
	case transformationType::rotateLeft:
		if (renderer && renderer->GetActiveCamera())
		{
			renderer->GetActiveCamera()->Azimuth(-90.0);
		}
		break;
	case transformationType::rotateRight:
		if (renderer && renderer->GetActiveCamera())
		{
			renderer->GetActiveCamera()->Azimuth(90.0);
		}
		break;
	case transformationType::invert:
		invertColors();
		break;
	default:
		break;
	}

	if (m_volume && m_volume->ImageData)
	{
		m_volume->ImageData->Modified();
	}
	m_dcmWidget->Render();
	updateOverlayZoomFactor();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::setInteractor(const vtkSmartPointer<vtkRenderWindowInteractor>& t_interactor)
{
	if (t_interactor)
	{
		m_interactor = t_interactor;
		m_interactor->SetInteractorStyle(vtkSmartPointer<vtkWidget2DInteractorStyle>::New());
		if (m_dcmWidget)
		{
			m_dcmWidget->SetupInteractor(m_interactor);
			m_activeRenderWindow = m_dcmWidget->GetRenderWindow();
		}
	}
	else
	{
		m_interactor = nullptr;
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::render()
{
	if (!m_volume || !m_volume->ImageData)
	{
		qCCritical(lcVtkWidget2D) << "Render aborted - image data unavailable.";
		throw std::runtime_error("Image data unavailable.");
	}
	if (!initWidgetDICOM())
	{
		qCCritical(lcVtkWidget2D) << "Render aborted - DICOM widget initialization failed.";
		throw std::runtime_error("Failed to configure DICOM widget.");
	}
	if (!m_dcmWidget)
	{
		qCCritical(lcVtkWidget2D) << "Render aborted - vtkWidgetDICOM not available.";
		throw std::runtime_error("vtkWidgetDICOM unavailable.");
	}
	auto* const interactorStyle =
		dynamic_cast<vtkWidget2DInteractorStyle*>(m_dcmWidget->GetRenderWindow()->
			GetInteractor()->GetInteractorStyle());
	if (interactorStyle)
	{
		interactorStyle->setWidget(this);
		interactorStyle->setSeries(m_series);
		interactorStyle->setImage(m_image);
		interactorStyle->updateOvelayImageNumber(0);
		qCInfo(lcVtkWidget2D) << "InteractorStyle configured.";
	}
	fitImage();
	createvtkWidgetOverlay();
	m_dcmWidget->GetRenderWindow()->Render();
	updateOverlayZoomFactor();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::createvtkWidgetOverlay()
{
	if (!m_widgetOverlay)
	{
		m_widgetOverlay = std::make_unique<vtkWidgetOverlay>();
	}
	m_widgetOverlay->setRenderer(m_vtkWidgetOverlayRenderer);
	const auto* metadata = m_volume ? &m_volume->Metadata : nullptr;
	m_widgetOverlay->createOverlay(m_renderWindows[0], metadata);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayZoomFactor()
{
	if (m_widgetOverlay && m_dcmWidget)
	{
		const double zoom = m_dcmWidget->getZoomFactor();
		if (std::isfinite(zoom) && zoom > 0.0)
		{
			std::ostringstream stream;
			stream.setf(std::ios::fixed);
			stream.precision(2);
			stream << "Zoom: " << zoom;
			m_widgetOverlay->updateOverlayInCorner(0, "zoom", stream.str());
			refreshOverlayInCorner(0);
		}
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayHUValue(const int& x, const int& y)
{
	if (!m_volume || !m_volume->ImageData)
	{
		return;
	}
	auto* const extent = m_volume->ImageData->GetExtent();
	if (x < extent[0] || x > extent[1] ||
		y < extent[2] || y > extent[3])
	{
		return;
	}
	const int width = extent[1] - extent[0] + 1;
	const int index = (y - extent[2]) * width + (x - extent[0]);
	const std::string hu = computeHUValueInPixel(index);
	m_widgetOverlay->updateOverlayInCorner(2, "huValues", "HU: " + hu);
	refreshOverlayInCorner(2);
}

//-----------------------------------------------------------------------------
std::string asclepios::gui::vtkWidget2D::computeHUValueInPixel(const int& t_pixel) const
{
	if (!m_volume || !m_volume->ImageData)
	{
		return "NA";
	}
	auto* const scalars = m_volume->ImageData->GetPointData()->GetScalars();
	if (!scalars || t_pixel < 0 || t_pixel >= scalars->GetNumberOfTuples())
	{
		return "NA";
	}
	const double value = scalars->GetTuple1(t_pixel);
	const double slope = m_volume->PixelInfo.RescaleSlope;
	const double intercept = m_volume->PixelInfo.RescaleIntercept;
	const double hu = slope * value + intercept;
	return formatHuValue(hu);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOvelayImageNumber(const int& t_current, const int& t_max,
                                                          const int& t_numberOfSeries)
{
	if (!m_widgetOverlay)
	{
		return;
	}
	std::string number;
	number.append("Series: " + std::to_string(t_numberOfSeries) + '\n')
		.append("Image: " + std::to_string(t_current + 1) + "/" + std::to_string(t_max) + '\n');
	m_widgetOverlay->updateOverlayInCorner(2, std::to_string(static_cast<int>(overlayKey::series)), number);
	refreshOverlayInCorner(2);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayWindowLevelApply(const int& t_window, const int& t_level,
                                                                const bool& t_apply)
{
	if (!m_dcmWidget || !m_widgetOverlay)
	{
		return;
	}
	t_apply
		? m_dcmWidget->changeWindowWidthCenter(t_window, t_level)
		: m_dcmWidget->setWindowWidthCenter(t_window, t_level);
	std::string window;
	std::string level;
	window.append("WL: " + std::to_string(m_dcmWidget->getWindowCenter()));
	level.append(" / WW: " + std::to_string(m_dcmWidget->getWindowWidth())).append("\n");
	m_widgetOverlay->updateOverlayInCorner(2,
		std::to_string(static_cast<int>(overlayKey::window)), window);
	m_widgetOverlay->updateOverlayInCorner(2,
		std::to_string(static_cast<int>(overlayKey::level)), level);
	refreshOverlayInCorner(2);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::resetOverlay()
{
	if (m_widgetOverlay)
	{
		m_widgetOverlay.release();
		m_widgetOverlay = std::make_unique<vtkWidgetOverlay>();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::invertColors()
{
	if (!m_dcmWidget || !m_volume)
	{
		return;
	}
	m_colorsInverted = !m_colorsInverted;
	m_dcmWidget->setInvertColors(m_colorsInverted);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::fitImage() const
{
	if (!m_dcmWidget || !m_dcmWidget->GetImageActor())
	{
		throw std::runtime_error("dcmWidget is null!");
	}
	m_dcmWidget->GetRenderer()->GetActiveCamera()->SetParallelScale(computeScale());
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::initRenderingLayers()
{
	if (m_renderWindows[0])
	{
		auto* const renderer = m_renderWindows[0]->GetRenderers()->GetFirstRenderer();
		renderer->SetLayer(0);
		renderer->SetInteractive(1);
		m_vtkWidgetOverlayRenderer = vtkSmartPointer<vtkRenderer>::New();
		m_vtkWidgetOverlayRenderer->SetLayer(1);
		m_vtkWidgetOverlayRenderer->SetInteractive(0);
		m_renderWindows[0]->SetNumberOfLayers(2);
		m_renderWindows[0]->AddRenderer(m_vtkWidgetOverlayRenderer);
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::refreshOverlayInCorner(const int& t_corner)
{
	if (!m_widgetOverlay || !m_renderWindows[0])
	{
		return;
	}
	m_widgetOverlay->setOverlayInCorner(t_corner);
	m_renderWindows[0]->Render();
}

//-----------------------------------------------------------------------------
double asclepios::gui::vtkWidget2D::computeScale() const
{
	if (!m_dcmWidget || !m_volume || !m_volume->ImageData)
	{
		return 1.0;
	}
	int extent[6] = {0};
	m_volume->ImageData->GetExtent(extent);
	const double spacingX = m_volume->Geometry.Spacing[0];
	const double spacingY = m_volume->Geometry.Spacing[1];
	const double sizeX = spacingX * (extent[1] - extent[0] + 1);
	const double sizeY = spacingY * (extent[3] - extent[2] + 1);
	return 0.5 * std::max(sizeX, sizeY);
}
