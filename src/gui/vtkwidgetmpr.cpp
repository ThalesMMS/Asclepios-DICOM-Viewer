#include "vtkwidgetmpr.h"
#include <vtkTextProperty.h>
#include <vtkProperty2D.h>
#include "image.h"
#include "vtkwidgetmprinteractorstyle.h"
#include <vtkRendererCollection.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkImageData.h>
#include <vtkScalarsToColors.h>
#include <QLoggingCategory>

Q_LOGGING_CATEGORY(lcVtkWidgetMpr, "asclepios.gui.vtkwidgetmpr")

asclepios::gui::vtkWidgetMPR::~vtkWidgetMPR()
{
	for (int i = 0; i < 3; ++i)
	{
		m_renderWindows[i]->RemoveObserver(m_callbackTags[i]);
	}
}

//-----------------------------------------------------------------------------
int asclepios::gui::vtkWidgetMPR::getNumberOfRenderWindow(vtkRenderWindow* t_window) const
{
	for (auto i = 0; i < 3; ++i)
	{
		if (m_renderWindows[i] == t_window)
		{
			return i;
		}
	}
	return -1;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::setWindowLevel(const int& t_window, const int& t_level)
{
        qCInfo(lcVtkWidgetMpr) << "Propagating window/level" << t_window << t_level << "to all render windows.";
        for (const auto& window : m_renderWindows)
        {
                changeWindowLevel(window, t_window, t_level, false);
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::setCameraCentered(const int& t_centered) const
{
	if (m_resliceWidget)
	{
		m_resliceWidget->setCameraCentered(t_centered);
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::render()
{
        if (!m_mprMaker)
        {
                qCCritical(lcVtkWidgetMpr) << "Cannot render without initialized MPRMaker.";
                return;
        }
        m_mprMaker->SetRenderWindows(
                m_renderWindows[0],
                m_renderWindows[1],
                m_renderWindows[2]);
        qCDebug(lcVtkWidgetMpr) << "Assigned render windows to MPRMaker.";
        m_mprMaker->setInitialWindow(m_image->getWindowCenter());
        m_mprMaker->setInitialLevel(m_image->getWindowWidth());
        auto* const inputData = m_mprMaker->getInputData();
        if (!inputData)
        {
                qCCritical(lcVtkWidgetMpr) << "MPRMaker has no input data available for rendering.";
                return;
        }
        int dimensions[3];
        inputData->GetDimensions(dimensions);
        const int* const extent = inputData->GetExtent();
        qCInfo(lcVtkWidgetMpr) << "Rendering MPR with dimensions" << dimensions[0] << dimensions[1] << dimensions[2]
                               << "and extent" << extent[0] << extent[1] << extent[2]
                               << extent[3] << extent[4] << extent[5];
        m_mprMaker->createMPR();
        qCInfo(lcVtkWidgetMpr) << "MPR creation complete.";
        m_callback = vtkSmartPointer<vtkWidgetMPRCallback>::New();
        m_callback->setWidget(this);
        for (auto i = 0; i < 3; ++i)
        {
                vtkNew<vtkWidgetMPRInteractorStyle> interactorStyle;
		interactorStyle->setImageReslice(m_mprMaker->getImageReslice(i));
		const int minExtendPosition = i * 2;
		const int maxExtendPosition = i * 2 + 1;
		interactorStyle->setMinMax(
			m_mprMaker->getInputData()->GetExtent()[minExtendPosition],
			m_mprMaker->getInputData()->GetExtent()[maxExtendPosition]);
                interactorStyle->SetCurrentImageNumber(m_mprMaker->getCenterSliceZPosition(i));
                interactorStyle->setWidget(this);
                m_renderWindows[i]->GetInteractor()->SetInteractorStyle(interactorStyle);
                interactorStyle->SetCurrentRenderer(m_renderWindows[i]->GetRenderers()->GetFirstRenderer());
                interactorStyle->setAxisActor2D(
                        createScaleActor(m_renderWindows[i]));
                interactorStyle->rescaleAxisActor();
                qCDebug(lcVtkWidgetMpr) << "Configured interactor style for window" << i
                                        << "extent range positions" << minExtendPosition << maxExtendPosition;
                m_widgetOverlay[i] = std::make_unique<vtkWidgetOverlay>();
                createVTKkWidgetOverlay(m_renderWindows[i], i);
                m_callbackTags[i] = m_renderWindows[i]->AddObserver(vtkCommand::ModifiedEvent,
                                                                    m_callback);
                qCDebug(lcVtkWidgetMpr) << "Registered ModifiedEvent observer for window" << i
                                        << "tag" << m_callbackTags[i];
        }
        createResliceWidget();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::resetResliceWidget()
{
        if (m_resliceWidget)
        {
                qCInfo(lcVtkWidgetMpr) << "Resetting reslice widget and render windows.";
                m_mprMaker->resetMatrixesToInitialPosition();
                m_mprMaker->resetWindowLevel();
                m_resliceWidget->centerImageActors(-1);
                m_resliceWidget->resetResliceCursor();
                m_renderWindows[0]->Render();
                m_renderWindows[1]->Render();
                m_renderWindows[2]->Render();
        }
        else
        {
                qCWarning(lcVtkWidgetMpr) << "resetResliceWidget called without initialized reslice widget.";
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::changeWindowLevel(vtkRenderWindow* t_renderWindow, const int& t_window,
                                                     const int& t_level, const bool t_append)
{
	int window;
	int level;
	if (t_append)
	{
		auto* const range =
			m_mprMaker->getColorMapScalar()->GetRange();
		window = range[1] - range[0];
		level = range[0] + window / 2;
		window += t_window;
		level += t_level;
	}
	else
	{
		window = t_window;
		level = t_level;
	}
	m_mprMaker->getColorMapScalar()->SetRange(level - 0.5 * window, level + 0.5 * window);
	auto const windowNumber =
		getNumberOfRenderWindow(t_renderWindow);
        if (windowNumber == -1)
        {
                qCWarning(lcVtkWidgetMpr) << "Attempted window/level update on unknown render window.";
                return;
        }
        qCInfo(lcVtkWidgetMpr) << "Updated window/level" << window << level << "for window" << windowNumber
                               << "append" << t_append;
        std::string ww;
	ww.append("WW: ").append(std::to_string(window));
	std::string wl;
	wl.append(" / WL: ").append(std::to_string(level)).append("\n");
	m_widgetOverlay[windowNumber]->updateOverlayInCorner(2, "2625616", ww);
	m_widgetOverlay[windowNumber]->updateOverlayInCorner(2, "2625617", wl);
	refreshOverlayInCorner(t_renderWindow, windowNumber, 2);
}

void asclepios::gui::vtkWidgetMPR::create3DMatrix() const
{
        if (!m_mprMaker)
        {
                qCCritical(lcVtkWidgetMpr) << "Cannot create 3D matrix without initialized MPRMaker.";
                return;
        }
        if (m_image)
        {
                qCInfo(lcVtkWidgetMpr) << "Creating 3D matrix from multi-frame image input.";
                m_mprMaker->setImage(m_image);
        }
        else
        {
                if (!m_series || m_series->getSinlgeFrameImages().empty())
                {
                        qCCritical(lcVtkWidgetMpr) << "Cannot create 3D matrix: missing series or single-frame images.";
                        return;
                }
                qCInfo(lcVtkWidgetMpr) << "Creating 3D matrix from single-frame series.";
                m_mprMaker->setSeries(m_series);
                m_mprMaker->setImage(m_series->getSinlgeFrameImages().begin()->get());
        }
        m_mprMaker->create3DMatrix();
        auto* const inputData = m_mprMaker->getInputData();
        if (inputData)
        {
                int dimensions[3];
                inputData->GetDimensions(dimensions);
                const int* const extent = inputData->GetExtent();
                qCInfo(lcVtkWidgetMpr) << "3D matrix ready with dimensions" << dimensions[0] << dimensions[1]
                                       << dimensions[2] << "and extent" << extent[0] << extent[1]
                                       << extent[2] << extent[3] << extent[4] << extent[5];
        }
        else
        {
                qCWarning(lcVtkWidgetMpr) << "3D matrix creation did not yield input data.";
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::initializeWidget()
{
        m_mprMaker = std::make_unique<MPRMaker>();
        qCInfo(lcVtkWidgetMpr) << "Initialized MPRMaker instance.";
        for (auto& window : m_renderWindows)
        {
                if (!window)
                {
                        window = vtkSmartPointer<vtkRenderWindow>::New();
                        qCDebug(lcVtkWidgetMpr) << "Created vtkRenderWindow" << window.GetPointer();
                }
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::createResliceWidget()
{
        if (!m_resliceWidget)
        {
                m_resliceWidget =
                        vtkSmartPointer<vtkResliceWidget>::New();
                qCInfo(lcVtkWidgetMpr) << "Instantiated vtkResliceWidget.";
        }
        m_resliceWidget->setRenderWindows(m_renderWindows);
        m_resliceWidget->setImageReslicers(
                m_mprMaker->getImageReslice(0),
                m_mprMaker->getImageReslice(1),
                m_mprMaker->getImageReslice(2));
        m_resliceWidget->SetInteractor(m_renderWindows[0]->GetInteractor());
        m_resliceWidget->SetEnabled(1);
        m_resliceWidget->setVisible(false);
        qCInfo(lcVtkWidgetMpr) << "Configured vtkResliceWidget with image reslicers and disabled visibility.";
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::createVTKkWidgetOverlay(vtkRenderWindow* t_window, int& t_windowNumber)
{
	auto* const renderer =
		t_window->GetRenderers()->GetFirstRenderer();
        const auto volume = m_mprMaker ? m_mprMaker->getVolume() : nullptr;
        const auto* metadata = volume ? &volume->Metadata : nullptr;
        if (!metadata)
        {
                qCWarning(lcVtkWidgetMpr) << "Metadata missing while creating overlay for window" << t_windowNumber;
        }
        m_widgetOverlay[t_windowNumber]->setRenderer(renderer);
        m_widgetOverlay[t_windowNumber]->createOverlay(t_window, metadata);
        qCDebug(lcVtkWidgetMpr) << "Overlay prepared for window" << t_windowNumber;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetMPR::refreshOverlayInCorner(vtkRenderWindow* t_window, const int t_windowNumber,
                                                          const int t_corner)
{
	m_widgetOverlay[t_windowNumber]->setOverlayInCorner(t_corner);
	t_window->Render();
}

//-----------------------------------------------------------------------------
vtkAxisActor2D* asclepios::gui::vtkWidgetMPR::createScaleActor(vtkRenderWindow* t_window)
{
	vtkNew<vtkAxisActor2D> m_scaleActor;
	m_scaleActor->GetPoint1Coordinate()->SetCoordinateSystemToDisplay();
	m_scaleActor->GetPoint2Coordinate()->SetCoordinateSystemToDisplay();
	m_scaleActor->SetNumberOfLabels(5);
	m_scaleActor->LabelVisibilityOff();
	m_scaleActor->AdjustLabelsOff();
	m_scaleActor->GetTitleTextProperty()->SetBold(1);
	m_scaleActor->GetTitleTextProperty()->SetItalic(1);
	m_scaleActor->GetTitleTextProperty()->SetShadow(1);
	m_scaleActor->GetTitleTextProperty()->SetFontFamilyToArial();
	m_scaleActor->GetProperty()->SetColor(1, 1, 1);
	t_window->GetRenderers()->GetFirstRenderer()->AddActor(m_scaleActor);
	return m_scaleActor;
}
