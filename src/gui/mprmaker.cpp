#include "mprmaker.h"
#include <vtkImageData.h>
#include <vtkDataArray.h>
#include <vtkRenderer.h>
#include <vtkImageProperty.h>
#include <vtkCamera.h>
#include <vtkInformation.h>
#include "image.h"
#include "series.h"
#include <vtkImageActor.h>
#include <vtkScalarsToColors.h>
#include <vtkMatrix4x4.h>
#include <vtkImageResliceMapper.h>
#include <vtkPointData.h>

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

    if (m_image && m_image->getIsMultiFrame())
    {
        m_volume = m_image->getDicomVolume();
    }
    else if (m_series)
    {
        m_volume = m_series->getVolumeForSingleFrameSeries();
    }
    else
    {
        m_volume.reset();
    }
}

//-----------------------------------------------------------------------------
void asclepios::gui::MPRMaker::createMPR()
{
    if (m_volume && m_volume->ImageData)
    {
        createMprViews();
    }
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
        return;
    }
    double level = m_volume->PixelInfo.WindowCenter;
    double window = m_volume->PixelInfo.WindowWidth;
    if (window <= 0.0 || level == 0.0)
    {
        auto* const scalars = m_volume->ImageData->GetPointData()->GetScalars();
        if (scalars)
        {
            double range[2] = {0.0, 0.0};
            scalars->GetRange(range);
            window = range[1] - range[0];
            level = 0.5 * (range[1] + range[0]);
        }
    }
    if (!m_colorMap)
    {
        m_colorMap = vtkSmartPointer<vtkScalarsToColors>::New();
    }
    m_colorMap->SetRange(level - 0.5 * window, level + 0.5 * window);
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
        return;
    }
    double level = m_initialWindow == 0 ? m_volume->PixelInfo.WindowCenter : m_initialWindow;
    double window = m_initialLevel == 0 ? m_volume->PixelInfo.WindowWidth : m_initialLevel;
    if (window <= 0.0 || level == 0.0)
    {
        auto* const scalars = m_volume->ImageData->GetPointData()->GetScalars();
        if (scalars)
        {
            double range[2] = {0.0, 0.0};
            scalars->GetRange(range);
            window = range[1] - range[0];
            level = 0.5 * (range[1] + range[0]);
        }
    }
    setMiddleSlice(t_plane);
    if (!m_colorMap)
    {
        m_colorMap = vtkSmartPointer<vtkScalarsToColors>::New();
        m_colorMap->SetRange(level - 0.5 * window, level + 0.5 * window);
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
	m_renderWindow[t_plane]->Render();
}
