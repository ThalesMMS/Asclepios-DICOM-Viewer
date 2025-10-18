#include "mprmaker.h"
#include <vtkImageData.h>
#include <vtkDataArray.h>
#include <vtkRenderer.h>
#include <vtkImageProperty.h>
#include <vtkCamera.h>
#include <vtkInformation.h>
#include <vtkOpenGLRenderWindow.h>
#include "image.h"
#include "series.h"
#include <vtkImageActor.h>
#include <vtkScalarsToColors.h>
#include <vtkMatrix4x4.h>
#include <vtkImageResliceMapper.h>
#include <vtkLookupTable.h>
#include <vtkPointData.h>
#include <QString>
#include <QLoggingCategory>
#include <cmath>

Q_LOGGING_CATEGORY(lcMprMaker, "asclepios.gui.mprmaker")

namespace
{
        constexpr double uniformRangeThreshold = 1e-5;

        vtkLookupTable* ensureGrayscaleLookupTable(vtkSmartPointer<vtkScalarsToColors>& colorMap)
        {
                auto* lookupTable = vtkLookupTable::SafeDownCast(colorMap.GetPointer());
                if (!lookupTable)
                {
                        auto table = vtkSmartPointer<vtkLookupTable>::New();
                        table->SetNumberOfTableValues(256);
                        table->SetRampToLinear();
                        table->SetScaleToLinear();
                        table->SetHueRange(0.0, 0.0);
                        table->SetSaturationRange(0.0, 0.0);
                        table->SetValueRange(0.0, 1.0);
                        table->SetAlphaRange(1.0, 1.0);
                        colorMap = table;
                        lookupTable = table;
                }
                return lookupTable;
        }

        bool isUniformRange(const double* range)
        {
                if (!range)
                {
                        return true;
                }
                const double span = range[1] - range[0];
                return !std::isfinite(range[0]) || !std::isfinite(range[1]) || std::abs(span) <= uniformRangeThreshold;
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::SetRenderWindows(const vtkSmartPointer<vtkRenderWindow>& t_sagittalWindow,
                                                const vtkSmartPointer<vtkRenderWindow>& t_coronalWindow,
                                                const vtkSmartPointer<vtkRenderWindow>& t_axialWindow)
{
	m_renderWindow[0] = t_sagittalWindow;
	m_renderWindow[1] = t_coronalWindow;
	m_renderWindow[2] = t_axialWindow;
}

//-----------------------------------------------------------------------------
vtkImageReslice* asclepios::gui::MPRMaker::getOriginalValueImageReslice(const int t_plane)
{
	m_originalValuesReslicer[t_plane]->SetResliceAxes(m_reslicer[t_plane]->GetResliceAxes());
	return m_originalValuesReslicer[t_plane];
}

//-----------------------------------------------------------------------------
double asclepios::gui::MPRMaker::getCenterSliceZPosition(const int t_plane) const
{
    if (!m_volume || !m_volume->ImageData)
    {
        return 0.0;
    }
    int extent[6] = {0};
    m_volume->ImageData->GetExtent(extent);
    return 0.5 * (extent[t_plane * 2] + extent[t_plane * 2 + 1]);
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::create3DMatrix()
{
	if (!m_series)
	{
		m_series = m_image->getParentObject();
	}

    QString failureReason;
    qCInfo(lcMprMaker)
            << "create3DMatrix() invoked"
            << "seriesUid"
            << (m_series ? QString::fromStdString(m_series->getUID()) : QStringLiteral("n/a"))
            << "imageIdx"
            << (m_image ? m_image->getIndex() : -1)
            << "multiFrame"
            << (m_image ? m_image->getIsMultiFrame() : false);

    if (m_image && m_image->getIsMultiFrame())
    {
        m_volume = m_image->getDicomVolume(&failureReason);
    }
    else if (m_series)
    {
        try
        {
            m_volume = m_series->getVolumeForSingleFrameSeries();
        }
        catch (const std::exception& ex)
        {
            failureReason = QString::fromUtf8(ex.what());
            m_volume.reset();
        }
        catch (...)
        {
            failureReason = QStringLiteral("Unexpected error while decoding series volume.");
            m_volume.reset();
        }
    }
    else
    {
        failureReason = QStringLiteral("Missing series context for multiplanar reconstruction.");
        m_volume.reset();
    }

    if (m_volume && m_volume->ImageData)
    {
        int dims[3] = {0, 0, 0};
        double spacing[3] = {0.0, 0.0, 0.0};
        double origin[3] = {0.0, 0.0, 0.0};
        double bounds[6] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
        m_volume->ImageData->GetDimensions(dims);
        m_volume->ImageData->GetSpacing(spacing);
        m_volume->ImageData->GetOrigin(origin);
        m_volume->ImageData->GetBounds(bounds);
        vtkDataArray* scalars = m_volume->ImageData->GetPointData()
                ? m_volume->ImageData->GetPointData()->GetScalars()
                : nullptr;
        double range[2] = {0.0, 0.0};
        if (scalars)
        {
            scalars->GetRange(range);
        }
        qCInfo(lcMprMaker)
                << "Volume ready"
                << "dims"
                << dims[0]
                << dims[1]
                << dims[2]
                << "spacing"
                << spacing[0]
                << spacing[1]
                << spacing[2]
                << "origin"
                << origin[0]
                << origin[1]
                << origin[2]
                << "bounds"
                << bounds[0]
                << bounds[1]
                << bounds[2]
                << bounds[3]
                << bounds[4]
                << bounds[5]
                << "range"
                << range[0]
                << range[1];
        if (!scalars)
        {
            failureReason = QStringLiteral("Unable to access voxel intensities for multiplanar reconstruction.");
            qCCritical(lcMprMaker) << "Scalar array missing for volume.";
            m_volume.reset();
        }
        else if (isUniformRange(range))
        {
            failureReason = QStringLiteral(
                    "Volume decoded but intensities are uniform; MPR would appear as a black image.");
            qCWarning(lcMprMaker) << "Uniform intensity detected for volume" << range[0] << range[1];
            m_volume.reset();
        }
        else
        {
            failureReason.clear();
        }
    }

    if (!m_volume || !m_volume->ImageData)
    {
        if (failureReason.isEmpty())
        {
            failureReason = QStringLiteral("Volume data unavailable for multiplanar reconstruction.");
        }
        qCWarning(lcMprMaker) << "create3DMatrix() failed" << failureReason;
    }
    m_lastFailure = failureReason;
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::createMPR()
{
    if (!m_volume || !m_volume->ImageData)
    {
        if (m_lastFailure.isEmpty())
        {
            m_lastFailure = QStringLiteral("Multiplanar reconstruction unavailable: volume data missing or failed to load.");
        }
        qCWarning(lcMprMaker) << "createMPR() aborted" << m_lastFailure;
        return;
    }

    qCInfo(lcMprMaker) << "createMPR() starting";
    resetWindowLevel();
    createMprViews();
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::resetMatrixesToInitialPosition()
{
    setInitialMatrix();
    for (auto i = 0; i < 3; ++i)
    {
        setMiddleSlice(i);
    }
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::resetWindowLevel()
{
    if (!m_volume || !m_volume->ImageData)
    {
        qCWarning(lcMprMaker) << "resetWindowLevel() skipped - volume missing.";
        return;
    }
    double level = m_volume->PixelInfo.WindowCenter;
    double window = m_volume->PixelInfo.WindowWidth;
    double range[2] = {0.0, 0.0};
    auto* const scalars = m_volume->ImageData->GetPointData()
            ? m_volume->ImageData->GetPointData()->GetScalars()
            : nullptr;
    if (scalars)
    {
        scalars->GetRange(range);
    }
    if ((window <= 0.0 || level == 0.0) && scalars)
    {
        window = range[1] - range[0];
        level = 0.5 * (range[1] + range[0]);
        qCInfo(lcMprMaker)
                << "resetWindowLevel() derived from range"
                << range[0]
                << range[1];
    }
    updateColorMapWindowLevel(window, level);
    qCInfo(lcMprMaker)
            << "resetWindowLevel() applied"
            << "window"
            << window
            << "level"
            << level
            << "range"
            << range[0]
            << range[1];
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::updateColorMapWindowLevel(const double t_window, const double t_level)
{
    auto* lookupTable = ensureGrayscaleLookupTable(m_colorMap);
    lookupTable->SetTableRange(t_level - 0.5 * t_window, t_level + 0.5 * t_window);
    lookupTable->Build();
    lookupTable->Modified();
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::initialize()
{
	for (auto i = 0; i < 3; ++i)
	{
		m_reslicer[i] = vtkSmartPointer<vtkImageResliceToColors>::New();
		m_originalValuesReslicer[i] = vtkSmartPointer<vtkImageReslice>::New();
	}
	setInitialMatrix();
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::setInitialMatrix()
{
	vtkNew<vtkMatrix4x4> axialMatrix;
	axialMatrix->DeepCopy(m_axialMatrix);
	m_reslicer[2]->SetResliceAxes(axialMatrix);
	vtkNew<vtkMatrix4x4> sagittalMatrix;
	sagittalMatrix->DeepCopy(m_sagittalMatrix);
	m_reslicer[0]->SetResliceAxes(sagittalMatrix);
	vtkNew<vtkMatrix4x4> coronalMatrix;
	coronalMatrix->DeepCopy(m_coronalMatrix);
	m_reslicer[1]->SetResliceAxes(coronalMatrix);
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::createMprViews()
{
	for (auto i = 0; i < 3; i++)
	{
		renderPlaneOffScreen(i);
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::setMiddleSlice(const int t_plane)
{
    if (!m_volume || !m_volume->ImageData)
    {
        return;
    }
    double spacing[3];
    double origin[3];
    double center[3];
    int extent[6] = {0};
    m_volume->ImageData->GetExtent(extent);
    m_volume->ImageData->GetSpacing(spacing);
    m_volume->ImageData->GetOrigin(origin);
    center[0] = origin[0] + spacing[0] * 0.5 * (extent[0] + extent[1]);
    center[1] = origin[1] + spacing[1] * 0.5 * (extent[2] + extent[3]);
    center[2] = origin[2] + spacing[2] * 0.5 * (extent[4] + extent[5]);
    m_reslicer[t_plane]->GetResliceAxes()->SetElement(0, 3, center[0]);
    m_reslicer[t_plane]->GetResliceAxes()->SetElement(1, 3, center[1]);
    m_reslicer[t_plane]->GetResliceAxes()->SetElement(2, 3, center[2]);
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::renderPlaneOffScreen(const int t_plane)
{
    if (!m_volume || !m_volume->ImageData)
    {
        qCWarning(lcMprMaker) << "renderPlaneOffScreen() skipped - volume missing" << "plane" << t_plane;
        return;
    }
    double level = m_initialWindow == 0 ? m_volume->PixelInfo.WindowCenter : m_initialWindow;
    double window = m_initialLevel == 0 ? m_volume->PixelInfo.WindowWidth : m_initialLevel;
    double range[2] = {0.0, 0.0};
    auto* const scalars = m_volume->ImageData->GetPointData()
            ? m_volume->ImageData->GetPointData()->GetScalars()
            : nullptr;
    if (scalars)
    {
        scalars->GetRange(range);
    }
    if ((window <= 0.0 || level == 0.0) && scalars)
    {
        window = range[1] - range[0];
        level = 0.5 * (range[1] + range[0]);
    }
    setMiddleSlice(t_plane);
    static double lastWindow = -1.0;
    static double lastLevel = -1.0;
    if (window != lastWindow || level != lastLevel)
    {
        updateColorMapWindowLevel(window, level);
        lastWindow = window;
        lastLevel = level;
    }
    m_reslicer[t_plane]->SetInputData(m_volume->ImageData);
    m_reslicer[t_plane]->BypassOff();
    m_reslicer[t_plane]->SetInformationInput(m_volume->ImageData);
    m_reslicer[t_plane]->SetOutputDimensionality(2);
    m_reslicer[t_plane]->SetSlabNumberOfSlices(0);
    m_reslicer[t_plane]->SetLookupTable(m_colorMap);
    m_reslicer[t_plane]->SetOutputFormatToRGB();
    m_reslicer[t_plane]->Update();
    m_originalValuesReslicer[t_plane]->SetInputData(m_volume->ImageData);
    m_originalValuesReslicer[t_plane]->SetInformationInput(m_volume->ImageData);
    m_originalValuesReslicer[t_plane]->SetOutputDimensionality(2);
    m_originalValuesReslicer[t_plane]->SetResliceAxes(m_reslicer[t_plane]->GetResliceAxes());
    m_originalValuesReslicer[t_plane]->Update();
        vtkNew<vtkImageActor> actor;
        vtkNew<vtkRenderer> renderer;
        vtkNew<vtkImageResliceMapper> mapper;
        mapper->SeparateWindowLevelOperationOff();
        mapper->SetInputConnection(m_reslicer[t_plane]->GetOutputPort());
	actor->GetProperty()->SetInterpolationTypeToCubic();
	actor->SetMapper(mapper);
	renderer->AddActor(actor);
        renderer->SetBackground(0, 0, 0);
        renderer->GetActiveCamera()->SetParallelProjection(1);
        renderer->ResetCamera();
        m_renderWindow[t_plane]->AddRenderer(renderer);
        const int* size = m_renderWindow[t_plane]->GetSize();
        auto* const openGlWindow = vtkOpenGLRenderWindow::SafeDownCast(m_renderWindow[t_plane]);
        const unsigned int frameBufferObject = openGlWindow ? openGlWindow->GetFrameBufferObject() : 0U;
        const unsigned int defaultFrameBufferId = openGlWindow ? openGlWindow->GetDefaultFrameBufferId() : 0U;
        double actorBounds[6] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
        actor->GetBounds(actorBounds);
        qCInfo(lcMprMaker)
                << "renderPlaneOffScreen()"
                << "plane"
                << t_plane
                << "window"
                << window
                << "level"
                << level
                << "range"
                << range[0]
                << range[1]
                << "size"
                << (size ? size[0] : 0)
                << (size ? size[1] : 0)
                << "offscreen"
                << m_renderWindow[t_plane]->GetOffScreenRendering()
                << "fbo"
                << frameBufferObject
                << "defaultFbo"
                << defaultFrameBufferId
                << "actorBounds"
                << actorBounds[0]
                << actorBounds[1]
                << actorBounds[2]
                << actorBounds[3]
                << actorBounds[4]
                << actorBounds[5];
        m_renderWindow[t_plane]->Render();
}

