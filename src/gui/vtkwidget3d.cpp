#include "vtkwidget3d.h"
#include <vtkRenderer.h>
#include <vtkWidgetRepresentation.h>
#include <vtkVolumeProperty.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkContourValues.h>
#include <vtkImageData.h>
#include <vtkDataArray.h>
#include <vtkPointData.h>
#include <vtkCamera.h>
#include <vtkOpenGLRenderWindow.h>
#include <QElapsedTimer>
#include <QLoggingCategory>
#include <QByteArray>
#include <QString>

Q_LOGGING_CATEGORY(lcVtkWidget3D, "asclepios.gui.vtkwidget3d")

void asclepios::gui::vtkWidget3D::initWidget()
{
        m_renderWindows[0] = vtkSmartPointer<vtkRenderWindow>::New();
        m_mapper = vtkSmartPointer<vtkSmartVolumeMapper>::New();
        m_renderer = vtkSmartPointer<vtkRenderer>::New();
        m_volume = vtkSmartPointer<vtkVolume>::New();
        m_transferFunction = std::make_unique<TransferFunction>();
        m_transferFunction->initializeDefaultCurve();
        qCInfo(lcVtkWidget3D) << "Initialized vtkWidget3D components"
                              << "renderWindow" << m_renderWindows[0].GetPointer()
                              << "mapper" << m_mapper.GetPointer()
                              << "renderer" << m_renderer.GetPointer()
                              << "volume" << m_volume.GetPointer();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::initBoxWidget()
{
	if (!m_renderer || !m_volume)
	{
		return;
	}
	m_boxWidget = vtkSmartPointer<vtkBoxWidget2>::New();
	m_boxWidget->SetInteractor(m_renderer->GetRenderWindow()->GetInteractor());
	m_boxWidget->CreateDefaultRepresentation();
	m_boxWidget->GetRepresentation()->SetPlaceFactor(1);
	m_boxWidget->GetRepresentation()->PlaceWidget(m_volume->GetBounds());
	initBoxWidgetCallback();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::initBoxWidgetCallback()
{
	m_boxWidgetCallback = vtkSmartPointer<vtkBoxWidget3DCallback>::New();
	m_boxWidgetCallback->setVolume(m_volume);
	m_boxWidget->AddObserver(vtkCommand::InteractionEvent, m_boxWidgetCallback);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::initInteractorStyle()
{
	m_interactorStyle =
		vtkSmartPointer<vtkWidget3DInteractorStyle>::New();
	m_interactorStyle->setWidget(this);
	m_interactorStyle->setTransferFunction(m_transferFunction.get());
	m_interactor->SetInteractorStyle(m_interactorStyle);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::setVolumeMapperBlend() const
{
	m_mapper->SetBlendMode(vtkVolumeMapper::COMPOSITE_BLEND);
}

//-----------------------------------------------------------------------------
std::shared_ptr<asclepios::core::DicomVolume> asclepios::gui::vtkWidget3D::acquireVolume(QString* failureReason) const
{
        QString localFailure;
        std::shared_ptr<core::DicomVolume> volume;

        if (m_image && m_image->getIsMultiFrame())
        {
                volume = m_image->getDicomVolume(&localFailure);
        }
        else if (m_series)
        {
                try
                {
                        volume = m_series->getVolumeForSingleFrameSeries();
                }
                catch (const std::exception& ex)
                {
                        localFailure = QString::fromUtf8(ex.what());
                }
                catch (...)
                {
                        localFailure = QStringLiteral("Unexpected error while decoding series volume.");
                }
        }

        if (!volume || !volume->ImageData)
        {
                if (localFailure.isEmpty())
                {
                        localFailure = QStringLiteral("Volume data unavailable for the selected dataset.");
                }
        }
        else
        {
                localFailure.clear();
        }

        if (failureReason)
        {
                *failureReason = localFailure;
        }
        return volume;
}

std::tuple<int, int> asclepios::gui::vtkWidget3D::getWindowLevel(const std::shared_ptr<core::DicomVolume>& volume) const
{
        if (!volume || !volume->ImageData)
        {
                return std::make_tuple(0, 0);
        }
        double window = volume->PixelInfo.WindowWidth;
        double level = volume->PixelInfo.WindowCenter;
        if (window <= 0.0 || level == 0.0)
        {
                auto* const scalars = volume->ImageData->GetPointData()->GetScalars();
                if (scalars)
                {
                        double range[2] = {0.0, 0.0};
                        scalars->GetRange(range);
                        window = range[1] - range[0];
                        level = 0.5 * (range[1] + range[0]);
                }
        }
        qCDebug(lcVtkWidget3D) << "getWindowLevel()" << "center" << level << "width" << window
                               << "imageIdx" << (m_image ? m_image->getIndex() : -1);
        return std::make_tuple(static_cast<int>(std::round(window)), static_cast<int>(std::round(level)));
}

void asclepios::gui::vtkWidget3D::applyWindowLevelToTransferFunction(const int window, const int level)
{
        if (!m_transferFunction)
        {
                return;
        }
        const auto currentWindow = m_transferFunction->getWindow();
        const auto currentLevel = m_transferFunction->getLevel();
        const auto windowDelta = static_cast<double>(window) - static_cast<double>(currentWindow);
        const auto levelDelta = static_cast<double>(level) - static_cast<double>(currentLevel);
        m_transferFunction->updateWindowLevel(windowDelta, levelDelta);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::setFilter(const QString& t_filePath)
{
        try
        {
                if (!m_volumeData)
                {
                        QString failure;
                        m_volumeData = acquireVolume(&failure);
                        m_lastVolumeError = failure;
                }
                if (!m_volumeData || !m_volumeData->ImageData)
                {
                        qCWarning(lcVtkWidget3D) << "setFilter() aborted - volume data unavailable." << m_lastVolumeError;
                        return;
                }
                m_lastVolumeError.clear();
                const auto [window, level] = getWindowLevel(m_volumeData);
                if (t_filePath == "MIP")
                {
                        m_transferFunction.reset();
                        m_transferFunction = std::make_unique<TransferFunction>();
                        m_transferFunction->initializeDefaultCurve();
                        m_mapper->SetBlendMode(vtkVolumeMapper::MAXIMUM_INTENSITY_BLEND);
                        m_transferFunction->setMaximumIntensityProjectionFunction(0, 0);
                        applyWindowLevelToTransferFunction(window, level);
                        qCInfo(lcVtkWidget3D) << "setFilter() applied MIP" << "imageIdx"
                                              << (m_image ? m_image->getIndex() : -1);
                }
                else
                {
                        m_mapper->SetBlendMode(vtkVolumeMapper::COMPOSITE_BLEND);
                        m_transferFunction->loadFilterFromFile(t_filePath);
                        applyWindowLevelToTransferFunction(window, level);
                        qCInfo(lcVtkWidget3D) << "setFilter() loaded filter" << t_filePath
                                              << "seriesUid"
                                              << (m_series ? QString::fromStdString(m_series->getUID()) : QStringLiteral("n/a"));
                }
                updateFilter();
                m_interactorStyle->setTransferFunction(m_transferFunction.get());

        }
        catch (const std::exception& ex)
        {
                qCCritical(lcVtkWidget3D) << "setFilter() failed" << ex.what()
                                          << "filter" << t_filePath;
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::render()
{
        const QByteArray disableOffscreenEnv = qgetenv("ASCLEPIOS_3D_DISABLE_OFFSCREEN").trimmed().toLower();
        const bool disableOffscreen =
                disableOffscreenEnv == "1" || disableOffscreenEnv == "true" || disableOffscreenEnv == "yes" ||
                disableOffscreenEnv == "on";
        if (disableOffscreen)
        {
                qCInfo(lcVtkWidget3D) << "render() forcing on-screen rendering due to ASCLEPIOS_3D_DISABLE_OFFSCREEN"
                                      << disableOffscreenEnv;
                m_renderWindows[0]->OffScreenRenderingOff();
        }
        else
        {
                m_renderWindows[0]->OffScreenRenderingOn();
        }
        setVolumeMapperBlend();
        QString failureReason;
        m_volumeData = acquireVolume(&failureReason);
        m_lastVolumeError = failureReason;
        if (!m_volumeData || !m_volumeData->ImageData)
        {
                qCCritical(lcVtkWidget3D) << "render() aborted - volume data unavailable." << m_lastVolumeError;
                return;
        }
        m_lastVolumeError.clear();
        const auto [window, level] = getWindowLevel(m_volumeData);
        qCInfo(lcVtkWidget3D) << "render() configuring pipeline"
                              << "seriesUid" << (m_series ? QString::fromStdString(m_series->getUID()) : QStringLiteral("n/a"))
                              << "imageIdx" << (m_image ? m_image->getIndex() : -1);
        m_mapper->SetInputData(m_volumeData->ImageData);
        applyWindowLevelToTransferFunction(window, level);
        m_volume->SetMapper(m_mapper);
        updateFilter();
        if (m_volumeData->Direction)
        {
                m_volume->SetUserMatrix(m_volumeData->Direction);
                m_volume->SetOrigin(0.0, 0.0, 0.0);
        }
        else
        {
                const auto& origin = m_volumeData->Geometry.Origin;
                m_volume->SetOrigin(origin[0], origin[1], origin[2]);
        }
        m_renderer->AddVolume(m_volume);
        m_renderer->ResetCamera();
        m_renderWindows[0]->AddRenderer(m_renderer);
        double viewport[4] = {0.0, 0.0, 0.0, 0.0};
        if (m_renderer && m_renderer->GetViewport())
        {
                const double* rendererViewport = m_renderer->GetViewport();
                viewport[0] = rendererViewport[0];
                viewport[1] = rendererViewport[1];
                viewport[2] = rendererViewport[2];
                viewport[3] = rendererViewport[3];
        }
        double clippingRange[2] = {0.0, 0.0};
        if (auto* const camera = m_renderer ? m_renderer->GetActiveCamera() : nullptr)
        {
                camera->GetClippingRange(clippingRange);
        }
        const int* size = m_renderWindows[0]->GetSize();
        auto* const openGlWindow = vtkOpenGLRenderWindow::SafeDownCast(m_renderWindows[0]);
        const unsigned int frameBufferObject = openGlWindow ? openGlWindow->GetFrameBufferObject() : 0U;
        const unsigned int defaultFrameBufferId = openGlWindow ? openGlWindow->GetDefaultFrameBufferId() : 0U;
        qCInfo(lcVtkWidget3D) << "render() OpenGL state"
                              << "size" << (size ? size[0] : 0) << (size ? size[1] : 0)
                              << "viewport" << viewport[0] << viewport[1] << viewport[2] << viewport[3]
                              << "clipRange" << clippingRange[0] << clippingRange[1]
                              << "offscreen" << m_renderWindows[0]->GetOffScreenRendering()
                              << "fbo" << frameBufferObject
                              << "defaultFbo" << defaultFrameBufferId;
        QElapsedTimer timer;
        timer.start();
        m_renderWindows[0]->Render();
        const auto renderDuration = timer.elapsed();
        if (!disableOffscreen)
        {
                m_renderWindows[0]->OffScreenRenderingOff();
        }
        auto* const extend = m_volume->GetBounds();
        initInteractorStyle();
        int dimensions[3] = {0, 0, 0};
        vtkIdType voxelCount = -1;
        if (m_volumeData->ImageData)
        {
                m_volumeData->ImageData->GetDimensions(dimensions);
                voxelCount = static_cast<vtkIdType>(dimensions[0]) * dimensions[1] * dimensions[2];
        }
        qCInfo(lcVtkWidget3D)
                << "[Telemetry] Volume render completed"
                << "durationMs" << renderDuration
                << "bounds" << extend[0] << extend[1] << extend[2] << extend[3] << extend[4] << extend[5]
                << "dimensions" << dimensions[0] << dimensions[1] << dimensions[2]
                << "voxelCount" << voxelCount;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::activateBoxWidget(const bool& t_flag)
{
	if (!m_boxWidget)
	{
		initBoxWidget();
	}
	m_boxWidget->SetEnabled(t_flag);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidget3D::updateFilter() const
{
	m_volume->GetProperty()->SetInterpolationTypeToLinear();
	m_volume->GetProperty()->SetScalarOpacity(m_transferFunction->getOpacityFunction());
	m_volume->GetProperty()->SetAmbient(m_transferFunction->getAmbient());
	m_volume->GetProperty()->SetColor(m_transferFunction->getColorFunction());
	m_volume->GetProperty()->SetDiffuse(m_transferFunction->getDiffuse());
	m_volume->GetProperty()->SetSpecular(m_transferFunction->getSpecular());
	m_volume->GetProperty()->SetSpecularPower(m_transferFunction->getSpecularPower());
	m_volume->GetProperty()->GetIsoSurfaceValues()->SetValue(0, 0);
	(m_transferFunction->getHasShade()) ? m_volume->GetProperty()->ShadeOn() : m_volume->GetProperty()->ShadeOff();
}
