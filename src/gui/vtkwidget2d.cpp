#include "vtkwidget2d.h"
#include "smartdjdecoderregistration.h"
#include "utils.h"
#include "vtkwidget2dinteractorstyle.h"

#include <vtkCamera.h>
#include <vtkDataArray.h>
#include <vtkImageActor.h>
#include <vtkImageData.h>
#include <vtkPointData.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRendererCollection.h>
#include <vtkType.h>

#include <QLoggingCategory>
#include <QString>

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <memory>
#include <sstream>
#include <stdexcept>
#include <string>

#include <dcmtk/dcmdata/dcdeftag.h>
#include <dcmtk/dcmdata/dctk.h>
#include <dcmtk/dcmimgle/dcmimage.h>
#include <dcmtk/dcmimage/diregist.h>

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
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::initImageReader()
{
        qCInfo(lcVtkWidget2D)
                << "initImageReader started for series"
                << (m_series ? QString::fromStdString(m_series->getUID()) : QStringLiteral("<null>"))
                << "image"
                << (m_image ? QString::fromStdString(m_image->getSOPInstanceUID()) : QStringLiteral("<null>"));
        resetOverlay();
        if (!m_image)
        {
                qCCritical(lcVtkWidget2D) << "initImageReader aborted: image is null.";
                throw std::runtime_error("image is null!");
        }
        m_imageReader = m_image->getImageReader();
        if (!m_imageReader)
        {
                qCCritical(lcVtkWidget2D) << "initImageReader aborted: vtkDICOMReader unavailable.";
                throw std::runtime_error("dmcReader is null!");
        }
        resetFallback();
        if (!ensureImageDataAvailability())
        {
                qCCritical(lcVtkWidget2D)
                        << "initImageReader failed: ensureImageDataAvailability returned false.";
                throw std::runtime_error("Failed to prepare DICOM image data for rendering.");
        }
        qCInfo(lcVtkWidget2D)
                << "initImageReader completed successfully. Using fallback decoder:" << m_usingFallbackDecoder;
}

//-----------------------------------------------------------------------------
bool asclepios::gui::vtkWidget2D::initWidgetDICOM()
{
        if (!m_dcmWidget)
        {
                m_dcmWidget = vtkSmartPointer<vtkWidgetDICOM>::New();
                m_dcmWidget->SetRenderWindow(m_renderWindows[0]);
                m_activeRenderWindow = m_dcmWidget->GetRenderWindow();
                initRenderingLayers();
                qCInfo(lcVtkWidget2D) << "Created vtkWidgetDICOM instance.";
        }
        qCInfo(lcVtkWidget2D)
                << "Setting DICOM widget data. Window/Level from image:" << m_image->getWindowWidth()
                << m_image->getWindowCenter();

        if (m_usingFallbackDecoder)
        {
                if (m_fallbackImporter && hasValidScalars(m_fallbackImporter->GetOutput()))
                {
                        qCWarning(lcVtkWidget2D) << "Using DCMTK fallback image data.";
                        m_dcmWidget->setImageReader(nullptr);
                        m_dcmWidget->setImageMetaData(nullptr);
                        m_dcmWidget->SetInputData(m_fallbackImporter->GetOutput());
                }
                else
                {
                        qCCritical(lcVtkWidget2D)
                                << "Fallback image data unavailable. Aborting render.";
                        return false;
                }
        }
        else
        {
                m_dcmWidget->setImageMetaData(m_imageReader->GetMetaData());
                m_dcmWidget->setImageReader(m_imageReader);
        }
        qCInfo(lcVtkWidget2D) << "vtkWidgetDICOM configured using"
                              << (m_usingFallbackDecoder ? "fallback importer" : "vtkDICOMReader");
        m_dcmWidget->setWindowCenter(m_image->getWindowCenter());
        m_dcmWidget->setWindowWidth(m_image->getWindowWidth());
        m_dcmWidget->setInitialWindowWidthCenter();
        m_dcmWidget->Render();
        qCInfo(lcVtkWidget2D) << "Widget render invoked.";
        return true;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::setInteractor(const vtkSmartPointer<vtkRenderWindowInteractor>& t_interactor)
{
	if (t_interactor)
	{
		m_interactor = t_interactor;
		m_interactor->SetInteractorStyle(vtkSmartPointer<vtkWidget2DInteractorStyle>::New());
	}
	else
	{
		m_interactor = nullptr;
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::render()
{
        if (!ensureImageDataAvailability())
        {
                qCWarning(lcVtkWidget2D)
                        << "render() aborted - unable to obtain usable image data.";
                throw std::runtime_error("Unable to obtain usable image data for rendering.");
        }
        if (!initWidgetDICOM())
        {
                qCCritical(lcVtkWidget2D)
                        << "render() aborted - initWidgetDICOM failed to configure image data.";
                throw std::runtime_error("Failed to configure renderable image data.");
        }
        if (!m_dcmWidget)
        {
                qCWarning(lcVtkWidget2D) << "render() aborted - vtkWidgetDICOM missing.";
                throw std::runtime_error("vtkWidgetDICOM is not available for rendering.");
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
void asclepios::gui::vtkWidget2D::applyTransformation(const transformationType& t_type)
{
	if (!m_activeRenderWindow)
	{
		return;
	}
	auto* const renderer =
		m_activeRenderWindow->GetRenderers()->GetFirstRenderer();
	if (!renderer)
	{
		return;
	}
	auto* const camera = renderer->GetActiveCamera();
	auto* const cameraPosition = camera->GetPosition();
	try
	{
		switch (t_type)
		{
		case transformationType::flipHorizontal:
			camera->SetPosition(cameraPosition[0],
				cameraPosition[1], -cameraPosition[2]);
			break;
		case transformationType::flipVertical:
			camera->SetPosition(cameraPosition[0],
				cameraPosition[1], -cameraPosition[2]);
			camera->Roll(180);
			break;
		case transformationType::rotateLeft:
			camera->Roll(90);
			break;
		case transformationType::rotateRight:
			camera->Roll(-90);
			break;
		case transformationType::invert:
			invertColors();
			break;
		default:
			break;
		}
        }
        catch (const std::exception& ex)
        {
                qCWarning(lcVtkWidget2D)
                        << "Failed to apply transformation" << static_cast<int>(t_type)
                        << "due to" << ex.what();
        }
        m_activeRenderWindow->Render();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayZoomFactor()
{
	const auto factor = m_dcmWidget->getZoomFactor();
	std::stringstream zoom;
	zoom << "Zoom: " << setprecision(2) << factor << '\n';
	m_widgetOverlay->updateOverlayInCorner(2,
		std::to_string(static_cast<int>(overlayKey::zoom)),
		zoom.str());
	refreshOverlayInCorner(2);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayMouseCoordinates(const int& x, const int& y) const
{
	std::string coord = "Cord:";
	coord.append(" X: ").append(std::to_string(x)).
	      append(" Y: ").append(std::to_string(y)).append("\n");
	m_widgetOverlay->updateOverlayInCorner(2, "MousePos", coord);
}

//-----------------------------------------------------------------------------
std::string asclepios::gui::vtkWidget2D::computeHUValueInPixel(const int& t_pixel) const
{
	auto* const scalars = m_dcmWidget->GetInput()->GetPointData()->GetScalars();
	const auto nrTuples = scalars->GetNumberOfTuples();
	if (t_pixel > 0 && t_pixel < nrTuples)
	{
		const auto str = std::to_string(scalars->GetTuple(t_pixel)[0]);
		const auto pos = str.find('.');
		return str.substr(0, pos + 3);
	}
	return {};
}

double asclepios::gui::vtkWidget2D::computeScale() const
{
	auto* const size =
		m_dcmWidget->GetRenderWindow()->GetSize();
	auto* const bounds =
		m_dcmWidget->GetImageActor()->GetBounds();
	const auto width = static_cast<double>(size[0]);
	const auto height = static_cast<double>(size[1]);
	const auto xExtent = static_cast<double>(bounds[1] - bounds[0]);
	const auto yExtent = static_cast<double>(bounds[3] - bounds[2]);

	if (width <= 0.0 || height <= 0.0 || xExtent <= 0.0 || yExtent <= 0.0)
	{
		return 1.0;
	}

	const auto winRatio = height / width;
	const auto actRatio = yExtent / xExtent;

	const auto primary = actRatio > winRatio
		                     ? yExtent * 0.5
		                     : xExtent * 0.5 * winRatio;
        if (!std::isfinite(primary) || primary <= 0.0)
        {
                qCWarning(lcVtkWidget2D)
                        << "computeScale falling back to 1.0 - size:" << width << height
                        << "bounds:" << xExtent << yExtent;
                return 1.0;
        }
	return primary;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayHUValue(const int& x, const int& y)
{
	auto* const extent = m_dcmWidget->GetInput()->GetExtent();
	if (x > extent[0] && x < extent[1] && y > extent[2] && y < extent[3])
	{
		int extentX = std::abs(extent[1] - extent[0]);
		if (!extent[0] || !extent[1])
		{
			extentX += 1;
		}
		updateOverlayMouseCoordinates(x, y);
		m_widgetOverlay->updateOverlayInCorner(2, "huValues",
			"HU: " + computeHUValueInPixel((y - 1) * extentX + x));
		refreshOverlayInCorner(2);
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOvelayImageNumber(const int& t_current, const int& t_max,
                                                          const int& t_numberOfSeries)
{
	if(!m_widgetOverlay)
	{
		m_widgetOverlay = std::make_unique<vtkWidgetOverlay>();
	}
	std::string number;
	number.append("Series: " + std::to_string(t_numberOfSeries) + '\n')
		.append("Image: " + std::to_string(t_current + 1) +"/" + std::to_string(t_max) + '\n');
	m_widgetOverlay->updateOverlayInCorner(2,
		std::to_string(static_cast<int>(overlayKey::series)), number);
	refreshOverlayInCorner(2);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::updateOverlayWindowLevelApply(const int& t_window, const int& t_level,
                                                                const bool& t_apply)
{
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
	m_widgetOverlay->setOverlayInCorner(t_corner);
	m_renderWindows[0]->Render();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::createvtkWidgetOverlay()
{
        if (!m_widgetOverlay)
        {
                m_widgetOverlay = std::make_unique<vtkWidgetOverlay>();
        }
        m_widgetOverlay->setRenderer(m_vtkWidgetOverlayRenderer);
        vtkDICOMMetaData* meta = nullptr;
        if (!m_usingFallbackDecoder && m_imageReader)
        {
                meta = m_imageReader->GetMetaData();
        }
        m_widgetOverlay->createOverlay(m_renderWindows[0], meta);
}

//-----------------------------------------------------------------------------
bool asclepios::gui::vtkWidget2D::ensureImageDataAvailability()
{
        const auto logImageInfo = [&](vtkImageData* image, const char* source)
        {
                if (!image)
                {
                        qCWarning(lcVtkWidget2D)
                                << "Image data logging skipped because" << source << "returned null.";
                        return;
                }

                int dims[3] = {0, 0, 0};
                image->GetDimensions(dims);
                double spacing[3] = {0.0, 0.0, 0.0};
                image->GetSpacing(spacing);
                qCInfo(lcVtkWidget2D)
                        << "Image data available from" << source
                        << "dimensions" << dims[0] << "x" << dims[1] << "x" << dims[2]
                        << "spacing" << spacing[0] << spacing[1] << spacing[2];
        };

        if (m_usingFallbackDecoder && m_fallbackImporter &&
                hasValidScalars(m_fallbackImporter->GetOutput()))
        {
                logImageInfo(m_fallbackImporter->GetOutput(), "fallback importer (cached)");
                return true;
        }

        if (!m_imageReader)
        {
                qCWarning(lcVtkWidget2D)
                        << "No vtkDICOMReader available to provide image data.";
                return false;
        }

        if (isReaderOutputValid())
        {
                if (m_usingFallbackDecoder)
                {
                        qCInfo(lcVtkWidget2D)
                                << "vtkDICOMReader output recovered. Disabling fallback decoder.";
                }
                resetFallback();
                logImageInfo(m_imageReader->GetOutput(), "vtkDICOMReader");
                return true;
        }

        qCWarning(lcVtkWidget2D)
                << "vtkDICOMReader metadata or scalars missing. Attempting DCMTK fallback decoder.";

        if (buildFallbackImage())
        {
                qCInfo(lcVtkWidget2D)
                        << "DCMTK fallback decoder succeeded. Displaying recovered image.";
                if (m_fallbackImporter)
                {
                        logImageInfo(m_fallbackImporter->GetOutput(), "fallback importer");
                }
                return true;
        }

        qCCritical(lcVtkWidget2D)
                << "Failed to decode DICOM image even after fallback.";
        return false;
}

//-----------------------------------------------------------------------------
bool asclepios::gui::vtkWidget2D::isReaderOutputValid() const
{
        if (!m_imageReader)
        {
                return false;
        }

        auto* const metaData = m_imageReader->GetMetaData();
        auto* const output = m_imageReader->GetOutput();
        if (!metaData || !output)
        {
                return false;
        }

        return hasValidScalars(output);
}

//-----------------------------------------------------------------------------
bool asclepios::gui::vtkWidget2D::buildFallbackImage()
{
        resetFallback();

        if (!m_image)
        {
                qCCritical(lcVtkWidget2D)
                        << "Cannot execute fallback without an associated image object.";
                return false;
        }

        const std::string path = m_image->getImagePath();
        DcmFileFormat fileFormat;
        const OFCondition loadStatus = fileFormat.loadFile(path.c_str());
        if (loadStatus.bad())
        {
                qCCritical(lcVtkWidget2D) << "DCMTK failed to load" << path.c_str() << ":"
                                          << loadStatus.text();
                return false;
        }

        CodecRegistrationGuard guard;
        constexpr unsigned long creationFlags = CIF_UsePartialAccessToPixelData | CIF_AcrNemaCompatibility;
        std::unique_ptr<DicomImage> dicomImage =
                std::make_unique<DicomImage>(path.c_str(), creationFlags);
        if (!dicomImage || dicomImage->getStatus() != EIS_Normal)
        {
                const char* statusString = dicomImage ? DicomImage::getString(dicomImage->getStatus())
                                                      : "unknown error";
                qCCritical(lcVtkWidget2D) << "DCMTK fallback decoder failed:" << statusString;
                return false;
        }

        const auto applyWindowLevel = [&]()
        {
                const int windowWidth = m_image->getWindowWidth();
                const int windowCenter = m_image->getWindowCenter();
                if (windowWidth > 0)
                {
                        dicomImage->setWindow(windowCenter, windowWidth);
                }
                else
                {
                        dicomImage->setMinMaxWindow();
                }
        };

        applyWindowLevel();

        const unsigned long width = dicomImage->getWidth();
        const unsigned long height = dicomImage->getHeight();
        const unsigned long frameCount = std::max<unsigned long>(1, dicomImage->getFrameCount());
        if (width == 0 || height == 0)
        {
                qCCritical(lcVtkWidget2D)
                        << "Fallback decoder produced invalid dimensions:" << width << height;
                return false;
        }

        DcmDataset* dataset = fileFormat.getDataset();
        Uint16 samplesPerPixel = 1;
        if (dataset->findAndGetUint16(DCM_SamplesPerPixel, samplesPerPixel).bad() || samplesPerPixel == 0)
        {
                samplesPerPixel = 1;
        }

        Uint16 pixelRepresentation = 0;
        dataset->findAndGetUint16(DCM_PixelRepresentation, pixelRepresentation);
        const bool isSigned = pixelRepresentation == 1;

        Uint16 bitsAllocated = static_cast<Uint16>(dicomImage->getDepth());
        dataset->findAndGetUint16(DCM_BitsAllocated, bitsAllocated);
        if (bitsAllocated == 0)
        {
                dataset->findAndGetUint16(DCM_BitsStored, bitsAllocated);
        }
        const int bitsPerSample = bitsAllocated > 8 ? 16 : 8;

        const size_t framePixelCount = static_cast<size_t>(width) * static_cast<size_t>(height) *
                static_cast<size_t>(samplesPerPixel);
        if (framePixelCount == 0)
        {
                qCCritical(lcVtkWidget2D) << "Fallback decoder calculated zero-sized frame.";
                return false;
        }

        const size_t frameByteCount = framePixelCount * (bitsPerSample > 8 ? sizeof(Uint16) : sizeof(Uint8));

        if (bitsPerSample > 8)
        {
                if (isSigned)
                {
                        m_fallbackSignedWordBuffer.resize(framePixelCount * frameCount);
                }
                else
                {
                        m_fallbackWordBuffer.resize(framePixelCount * frameCount);
                }
        }
        else
        {
                if (isSigned)
                {
                        m_fallbackSignedByteBuffer.resize(framePixelCount * frameCount);
                }
                else
                {
                        m_fallbackByteBuffer.resize(framePixelCount * frameCount);
                }
        }

        const auto copyFramesIntoBuffer = [&](auto& buffer) -> bool
        {
                if (buffer.empty())
                {
                        qCCritical(lcVtkWidget2D)
                                << "Fallback buffer is empty before frame extraction.";
                        return false;
                }

                auto copyFrames = [&](unsigned long& failureIndex) -> bool
                {
                        auto* destination = buffer.data();
                        for (unsigned long frame = 0; frame < frameCount; ++frame)
                        {
                                const void* frameData = dicomImage->getOutputData(frame, bitsPerSample);
                                if (!frameData)
                                {
                                        failureIndex = frame;
                                        return false;
                                }
                                std::memcpy(destination + frame * framePixelCount, frameData, frameByteCount);
                        }
                        return true;
                };

                unsigned long failedFrameIndex = 0;
                if (copyFrames(failedFrameIndex))
                {
                        return true;
                }

                qCWarning(lcVtkWidget2D)
                        << "DCMTK fallback decoder returned null frame data at index" << failedFrameIndex
                        << "- retrying with adjusted window/level configuration.";

                dicomImage->setMinMaxWindow();
                applyWindowLevel();

                if (copyFrames(failedFrameIndex))
                {
                        return true;
                }

                qCCritical(lcVtkWidget2D)
                        << "DCMTK fallback decoder returned null frame data at index"
                        << failedFrameIndex << "even after retry.";
                return false;
        };

        bool framesCopied = false;

        if (bitsPerSample > 8)
        {
                framesCopied = isSigned ? copyFramesIntoBuffer(m_fallbackSignedWordBuffer)
                                        : copyFramesIntoBuffer(m_fallbackWordBuffer);
        }
        else
        {
                framesCopied = isSigned ? copyFramesIntoBuffer(m_fallbackSignedByteBuffer)
                                        : copyFramesIntoBuffer(m_fallbackByteBuffer);
        }

        if (!framesCopied)
        {
                resetFallback();
                return false;
        }

        m_fallbackImporter = vtkSmartPointer<vtkImageImport>::New();
        m_fallbackImporter->SetDataSpacing(1.0, 1.0, 1.0);
        m_fallbackImporter->SetDataOrigin(0.0, 0.0, 0.0);
        m_fallbackImporter->SetWholeExtent(0, static_cast<int>(width) - 1, 0, static_cast<int>(height) - 1,
                0, static_cast<int>(frameCount) - 1);
        m_fallbackImporter->SetDataExtentToWholeExtent();
        m_fallbackImporter->SetNumberOfScalarComponents(static_cast<int>(samplesPerPixel));

        if (bitsPerSample > 8)
        {
                if (isSigned)
                {
                        m_fallbackImporter->SetDataScalarTypeToShort();
                        m_fallbackImporter->CopyImportVoidPointer(m_fallbackSignedWordBuffer.data(),
                                m_fallbackSignedWordBuffer.size() * sizeof(std::int16_t));
                }
                else
                {
                        m_fallbackImporter->SetDataScalarTypeToUnsignedShort();
                        m_fallbackImporter->CopyImportVoidPointer(m_fallbackWordBuffer.data(),
                                m_fallbackWordBuffer.size() * sizeof(Uint16));
                }
        }
        else
        {
                if (isSigned)
                {
                        m_fallbackImporter->SetDataScalarType(VTK_SIGNED_CHAR);
                        m_fallbackImporter->CopyImportVoidPointer(m_fallbackSignedByteBuffer.data(),
                                m_fallbackSignedByteBuffer.size());
                }
                else
                {
                        m_fallbackImporter->SetDataScalarTypeToUnsignedChar();
                        m_fallbackImporter->CopyImportVoidPointer(m_fallbackByteBuffer.data(),
                                m_fallbackByteBuffer.size());
                }
        }

        m_fallbackImporter->Update();
        m_usingFallbackDecoder = hasValidScalars(m_fallbackImporter->GetOutput());

        if (!m_usingFallbackDecoder)
        {
                qCCritical(lcVtkWidget2D)
                        << "DCMTK fallback produced image without valid scalars.";
        }

        return m_usingFallbackDecoder;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget2D::resetFallback()
{
        m_usingFallbackDecoder = false;
        m_fallbackImporter = nullptr;
        m_fallbackByteBuffer.clear();
        m_fallbackWordBuffer.clear();
        m_fallbackSignedByteBuffer.clear();
        m_fallbackSignedWordBuffer.clear();
}

//-----------------------------------------------------------------------------
bool asclepios::gui::vtkWidget2D::hasValidScalars(vtkImageData* image) const
{
        if (!image)
        {
                return false;
        }

        auto* const pointData = image->GetPointData();
        if (!pointData)
        {
                return false;
        }

        auto* const scalars = pointData->GetScalars();
        return scalars && scalars->GetNumberOfTuples() > 0;
}
