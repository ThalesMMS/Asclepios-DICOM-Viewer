#include "vtkwidgetdicom.h"

#include "windowlevelfilter.h"

#include "dicomvolume.h"

#include <vtkCamera.h>
#include <vtkCoordinate.h>
#include <vtkDataArray.h>
#include <vtkDataObject.h>
#include <vtkDataSetAttributes.h>
#include <vtkImageActor.h>
#include <vtkImageData.h>
#include <vtkImageMapToWindowLevelColors.h>
#include <vtkImageMapper3D.h>
#include <vtkImageSliceMapper.h>
#include <vtkInformation.h>
#include <vtkInteractorStyleImage.h>
#include <vtkMatrix4x4.h>
#include <vtkNew.h>
#include <vtkObjectFactory.h>
#include <vtkPointData.h>
#include <vtkOpenGLRenderWindow.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRenderer.h>
#include <vtkRendererCollection.h>
#include <vtkStreamingDemandDrivenPipeline.h>

#include <QDebug>
#include <QLoggingCategory>
#include <QByteArray>

#include <algorithm>
#include <cmath>
#include <tuple>

Q_LOGGING_CATEGORY(lcWidgetDicom, "asclepios.gui.vtkwidgetdicom")
vtkStandardNewMacro(asclepios::gui::vtkWidgetDICOM)

namespace
{
        constexpr double epsilon = 1e-8;
        constexpr double spacingChangeThreshold = 5e-4;
        constexpr double cameraChangeThreshold = 1e-5;

	void copyDirectionToImage(vtkImageData* imageData, vtkMatrix4x4* direction)
	{
#if VTK_MAJOR_VERSION >= 9
		if (imageData && direction)
		{
			imageData->SetDirectionMatrix(direction);
		}
#else
		(void)imageData;
		(void)direction;
#endif
	}

	void applySlopeIntercept(vtkImageData* imageData, const asclepios::core::DicomPixelInfo& pixelInfo)
	{
		if (!imageData)
		{
			return;
		}
		if (std::abs(pixelInfo.RescaleSlope - 1.0) <= epsilon &&
			std::abs(pixelInfo.RescaleIntercept) <= epsilon)
		{
			return;
		}
		auto* const scalars = imageData->GetPointData() ? imageData->GetPointData()->GetScalars() : nullptr;
		if (!scalars)
		{
			return;
		}

		const vtkIdType tupleCount = scalars->GetNumberOfTuples();
		const double slope = pixelInfo.RescaleSlope;
		const double intercept = pixelInfo.RescaleIntercept;
		for (vtkIdType tuple = 0; tuple < tupleCount; ++tuple)
		{
			double value = scalars->GetTuple1(tuple);
			value = slope * value + intercept;
			scalars->SetTuple1(tuple, value);
		}
		scalars->Modified();
		imageData->Modified();
	}

	bool isMagnitudeValid(double value)
	{
		constexpr double spacingUpperBound = 1e4;
		const double absValue = std::abs(value);
		return std::isfinite(value) && absValue > epsilon && absValue < spacingUpperBound;
	}
}

asclepios::gui::vtkWidgetDICOM::vtkWidgetDICOM()
	: m_windowLevelFilter(std::make_unique<WindowLevelFilter>())
{
        m_windowLevelColors = vtkSmartPointer<vtkImageMapToWindowLevelColors>::New();
        m_windowLevelColors->PassAlphaToOutputOff();
        m_windowLevelColors->SetOutputFormatToLuminance();

        m_inputProducer = vtkSmartPointer<vtkTrivialProducer>::New();
        m_windowLevelColors->SetInputConnection(m_inputProducer->GetOutputPort());

        m_imageActor = vtkSmartPointer<vtkImageActor>::New();
        m_imageActor->InterpolateOn();

        const QByteArray useSliceMapperEnv = qgetenv("ASCLEPIOS_2D_USE_SLICE_MAPPER").trimmed().toLower();
        m_useSliceMapper =
                useSliceMapperEnv == "1" || useSliceMapperEnv == "true" || useSliceMapperEnv == "yes" ||
                useSliceMapperEnv == "on";
        if (m_useSliceMapper)
        {
                m_sliceMapper = vtkSmartPointer<vtkImageSliceMapper>::New();
                if (m_sliceMapper)
                {
                        m_sliceMapper->SliceAtFocalPointOff();
                        m_sliceMapper->SliceFacesCameraOn();
                        m_sliceMapper->BorderOff();
                }
                m_imageActor->SetMapper(m_sliceMapper);
                qCInfo(lcWidgetDicom) << "Using vtkImageSliceMapper due to ASCLEPIOS_2D_USE_SLICE_MAPPER"
                                      << useSliceMapperEnv;
        }
        else
        {
                qCInfo(lcWidgetDicom) << "Using default vtkImageActor mapper";
        }

        m_renderer = vtkSmartPointer<vtkRenderer>::New();
        m_renderer->SetBackground(0.0, 0.0, 0.0);
        m_renderer->AddActor(m_imageActor);

	m_windowLevelFilter->setWindowLevelColors(m_windowLevelColors);
}

asclepios::gui::vtkWidgetDICOM::~vtkWidgetDICOM() = default;

void asclepios::gui::vtkWidgetDICOM::SetRenderWindow(vtkRenderWindow* renderWindow)
{
	if (renderWindow == m_renderWindow)
	{
		return;
	}

	if (m_renderWindow && m_renderer)
	{
		auto* const renderers = m_renderWindow->GetRenderers();
		if (renderers && renderers->IsItemPresent(m_renderer) != 0)
		{
			m_renderWindow->RemoveRenderer(m_renderer);
		}
	}

	m_renderWindow = renderWindow;

	if (!m_renderWindow || !m_renderer)
	{
		return;
	}

	auto* const renderers = m_renderWindow->GetRenderers();
	if (!renderers || renderers->IsItemPresent(m_renderer) == 0)
	{
		m_renderWindow->AddRenderer(m_renderer);
	}

	if (m_interactor && m_interactor->GetRenderWindow() != m_renderWindow)
	{
		m_interactor->SetRenderWindow(m_renderWindow);
	}
	if (m_renderWindow->GetInteractor() != m_interactor && m_interactor)
	{
		m_renderWindow->SetInteractor(m_interactor);
	}
}

void asclepios::gui::vtkWidgetDICOM::SetupInteractor(vtkRenderWindowInteractor* interactor)
{
	m_interactor = interactor;
	if (!m_interactor || !m_renderWindow)
	{
		return;
	}
	if (m_interactor->GetRenderWindow() != m_renderWindow)
	{
		m_interactor->SetRenderWindow(m_renderWindow);
	}
	if (m_renderWindow->GetInteractor() != m_interactor)
	{
		m_renderWindow->SetInteractor(m_interactor);
	}
}

void asclepios::gui::vtkWidgetDICOM::Render()
{
        UpdateDisplayExtent();
        if (!m_renderWindow)
        {
                return;
        }
        const int* size = m_renderWindow->GetSize();
        if (!size || size[0] <= 0 || size[1] <= 0)
        {
                m_renderWindow->SetSize(512, 512);
        }
        if (m_renderWindow->GetNeverRendered())
        {
                m_renderWindow->Start();
        }
        const int* resolvedSize = m_renderWindow->GetSize();
        double viewport[4] = {0.0, 0.0, 0.0, 0.0};
        if (const double* rendererViewport = m_renderer ? m_renderer->GetViewport() : nullptr)
        {
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
        auto* const openGlWindow = vtkOpenGLRenderWindow::SafeDownCast(m_renderWindow);
        const unsigned int frameBufferObject = openGlWindow ? openGlWindow->GetFrameBufferObject() : 0U;
        const unsigned int defaultFrameBufferId = openGlWindow ? openGlWindow->GetDefaultFrameBufferId() : 0U;
        qCInfo(lcWidgetDicom) << "Render() state"
                              << "size" << (resolvedSize ? resolvedSize[0] : 0) << (resolvedSize ? resolvedSize[1] : 0)
                              << "viewport" << viewport[0] << viewport[1] << viewport[2] << viewport[3]
                              << "clipRange" << clippingRange[0] << clippingRange[1]
                              << "offscreen" << m_renderWindow->GetOffScreenRendering()
                              << "fbo" << frameBufferObject
                              << "defaultFbo" << defaultFrameBufferId
                              << "sliceMapper" << m_useSliceMapper;
        m_renderWindow->Render();
}

void asclepios::gui::vtkWidgetDICOM::setVolume(const std::shared_ptr<core::DicomVolume>& t_volume)
{
	m_volume = t_volume;
	if (!m_volume || !m_volume->ImageData)
	{
		qCWarning(lcWidgetDicom) << "Clearing DICOM widget input.";
		if (m_inputProducer)
		{
			m_inputProducer->SetOutput(nullptr);
			m_inputProducer->Modified();
		}
                if (auto* mapper = getImageMapper())
                {
                        mapper->SetInputData(nullptr);
                        mapper->Modified();
                }
                if (m_imageActor)
                {
                        m_imageActor->SetVisibility(0);
                        m_imageActor->Modified();
                }
		updateSliceRange();
		return;
	}

	int dims[3] = {0, 0, 0};
	m_volume->ImageData->GetDimensions(dims);
	qCInfo(lcWidgetDicom)
		<< "Configuring DICOM widget with dimensions"
		<< dims[0]
		<< dims[1]
		<< dims[2];

	copyDirectionToImage(m_volume->ImageData, getDirectionMatrix());

	const bool requiresRescale =
		(std::abs(m_volume->PixelInfo.RescaleSlope - 1.0) > epsilon) ||
		(std::abs(m_volume->PixelInfo.RescaleIntercept) > epsilon);
	auto* scalarsBefore = m_volume->ImageData->GetPointData()
		                       ? m_volume->ImageData->GetPointData()->GetScalars()
		                       : nullptr;
	if (!scalarsBefore)
	{
		qCCritical(lcWidgetDicom) << "Scalar array missing prior to rescale.";
	}
	else if (!scalarsBefore->GetName())
	{
		scalarsBefore->SetName("Scalars");
		if (m_volume && m_volume->ImageData && m_volume->ImageData->GetPointData())
		{
			m_volume->ImageData->GetPointData()->SetActiveScalars(scalarsBefore->GetName());
		}
	}
	if (requiresRescale)
	{
		applySlopeIntercept(m_volume->ImageData, m_volume->PixelInfo);
		m_volume->PixelInfo.RescaleSlope = 1.0;
		m_volume->PixelInfo.RescaleIntercept = 0.0;
	}
	auto* scalarsAfter = m_volume->ImageData->GetPointData()
		                      ? m_volume->ImageData->GetPointData()->GetScalars()
		                      : nullptr;
	if (scalarsAfter)
	{
		double range[2] = {0.0, 0.0};
		scalarsAfter->GetRange(range);
		if (!scalarsAfter->GetName())
		{
			scalarsAfter->SetName("Scalars");
		}
		if (m_volume && m_volume->ImageData && m_volume->ImageData->GetPointData())
		{
			m_volume->ImageData->GetPointData()->SetActiveScalars(scalarsAfter->GetName());
		}
		qCInfo(lcWidgetDicom)
			<< "Scalar array confirmed after rescale. Range:"
			<< range[0]
			<< range[1];
	}
	else
	{
		qCCritical(lcWidgetDicom) << "Scalar array missing after rescale.";
	}

	const char* scalarName = "Scalars";
	if (scalarsAfter && scalarsAfter->GetName())
	{
		scalarName = scalarsAfter->GetName();
	}
	else if (scalarsBefore && scalarsBefore->GetName())
	{
		scalarName = scalarsBefore->GetName();
	}
	if (m_volume && m_volume->ImageData && m_volume->ImageData->GetPointData())
	{
		m_volume->ImageData->GetPointData()->SetActiveScalars(scalarName);
	}
	vtkDataArray* activeScalars = (m_volume && m_volume->ImageData && m_volume->ImageData->GetPointData())
		                             ? m_volume->ImageData->GetPointData()->GetScalars()
		                             : nullptr;
	const int scalarType = activeScalars ? activeScalars->GetDataType() : VTK_DOUBLE;
	const int scalarComponents = activeScalars ? activeScalars->GetNumberOfComponents() : 1;
        if (m_volume && m_volume->ImageData)
        {
                if (vtkInformation* dataInfo = m_volume->ImageData->GetInformation())
                {
                        vtkDataObject::SetPointDataActiveScalarInfo(
                                dataInfo,
                                scalarType,
                                scalarComponents);
                        vtkDataObject::SetActiveAttribute(
                                dataInfo,
                                vtkDataObject::FIELD_ASSOCIATION_POINTS,
                                scalarName,
                                vtkDataSetAttributes::SCALARS);
                }
        }
        if (m_inputProducer)
        {
                m_inputProducer->SetOutput(m_volume->ImageData);
                vtkInformation* producerInfo = m_inputProducer->GetOutputInformation(0);
                if (producerInfo)
                {
                        vtkDataObject::SetPointDataActiveScalarInfo(
                                producerInfo,
                                scalarType,
                                scalarComponents);
                        vtkDataObject::SetActiveAttribute(
                                producerInfo,
                                vtkDataObject::FIELD_ASSOCIATION_POINTS,
                                scalarName,
                                vtkDataSetAttributes::SCALARS);
                }
                m_inputProducer->Modified();
                m_inputProducer->UpdateInformation();
        }
        if (m_windowLevelColors)
        {
                m_windowLevelColors->SetInputArrayToProcess(
                        0, 0, 0, vtkDataObject::FIELD_ASSOCIATION_POINTS, scalarName);
                if (vtkInformation* inputInfo = m_windowLevelColors->GetInputInformation())
                {
                        vtkDataObject::SetPointDataActiveScalarInfo(
                                inputInfo,
                                scalarType,
                                scalarComponents);
                        vtkDataObject::SetActiveAttribute(
                                inputInfo,
                                vtkDataObject::FIELD_ASSOCIATION_POINTS,
                                scalarName,
                                vtkDataSetAttributes::SCALARS);
                }
                m_windowLevelColors->UpdateInformation();
                m_windowLevelColors->Update();
                if (auto* output = m_windowLevelColors->GetOutput())
                {
                        int dims[3] = {0, 0, 0};
                        output->GetDimensions(dims);
                        double range[2] = {0.0, 0.0};
                        output->GetScalarRange(range);
                        qCInfo(lcWidgetDicom)
                                << "Window-level output dimensions"
                                << dims[0]
                                << dims[1]
                                << dims[2]
                                << "range"
                                << range[0]
                                << range[1];
                }
                else
                {
                        qCWarning(lcWidgetDicom) << "Window-level filter produced null output.";
                }
        }
        if (auto* mapper = getImageMapper())
        {
                if (m_windowLevelColors)
                {
                        mapper->SetInputConnection(m_windowLevelColors->GetOutputPort());
                }
                else
                {
                        mapper->SetInputData(nullptr);
                }
                mapper->Modified();
        }
        if (m_imageActor)
        {
                m_imageActor->SetVisibility(1);
                m_imageActor->Modified();
        }

	setInitialWindowWidthCenter();
	SetSliceOrientationToXY();
	updateSliceRange();
	SetSlice(0);

	if (auto* const camera = m_renderer ? m_renderer->GetActiveCamera() : nullptr)
	{
		camera->ParallelProjectionOn();
	}

	applyDirectionMatrix();
}

void asclepios::gui::vtkWidgetDICOM::applyDirectionMatrix()
{
#if VTK_MAJOR_VERSION >= 9
	if (!m_volume || !m_volume->Direction)
	{
		return;
	}
	auto* const actor = GetImageActor();
	if (!actor)
	{
		return;
	}
	actor->SetUserMatrix(m_volume->Direction);
#endif
}

vtkMatrix4x4* asclepios::gui::vtkWidgetDICOM::getDirectionMatrix() const
{
#if VTK_MAJOR_VERSION >= 9
        return (m_volume && m_volume->Direction) ? m_volume->Direction.GetPointer() : nullptr;
#else
        return nullptr;
#endif
}

vtkImageMapper3D* asclepios::gui::vtkWidgetDICOM::getImageMapper() const
{
        return m_imageActor ? m_imageActor->GetMapper() : nullptr;
}

void asclepios::gui::vtkWidgetDICOM::setInvertColors(bool t_flag)
{
        m_colorsInverted = t_flag;
        if (m_windowLevelFilter)
        {
		m_windowLevelFilter->setAreColorsInverted(m_colorsInverted);
	}
}

void asclepios::gui::vtkWidgetDICOM::updateScalarsForInversion()
{
	if (!m_volume || !m_volume->ImageData)
	{
		return;
	}
	auto* const scalars = m_volume->ImageData->GetPointData()
		                     ? m_volume->ImageData->GetPointData()->GetScalars()
		                     : nullptr;
	if (!scalars)
	{
		return;
	}
	if (!m_colorsInverted)
	{
		return;
	}
	double range[2] = {0.0, 0.0};
	scalars->GetRange(range);
	const double maxValue = range[1];
	const vtkIdType count = scalars->GetNumberOfTuples();
	for (vtkIdType index = 0; index < count; ++index)
	{
		const double value = scalars->GetTuple1(index);
		scalars->SetTuple1(index, maxValue - value);
	}
	scalars->Modified();
	m_volume->ImageData->Modified();
}

void asclepios::gui::vtkWidgetDICOM::setWindowWidthCenter(const int t_width, const int t_center)
{
	const int safeWidth = (t_width == 0) ? 1 : t_width;
	if (m_windowLevelFilter)
	{
		m_windowLevelFilter->setWindowWidthCenter(safeWidth, t_center);
	}
	m_windowLevelColors->SetWindow(static_cast<double>(safeWidth));
	m_windowLevelColors->SetLevel(static_cast<double>(t_center));
	m_windowLevelColors->Update();
	if (m_imageActor)
	{
		m_imageActor->Modified();
	}
	m_windowWidth = safeWidth;
	m_windowCenter = t_center;
}

void asclepios::gui::vtkWidgetDICOM::changeWindowWidthCenter(const int t_width, const int t_center)
{
	m_windowWidth += t_width;
	m_windowCenter += t_center;
	setWindowWidthCenter(m_windowWidth, m_windowCenter);
}

void asclepios::gui::vtkWidgetDICOM::setInitialWindowWidthCenter()
{
	if (!m_volume || !m_volume->ImageData)
	{
		qCWarning(lcWidgetDicom) << "Missing volume while initializing window/level.";
		return;
	}
        if (m_volume->PixelInfo.WindowWidth > 0.0)
        {
                m_windowWidth = static_cast<int>(std::lround(m_volume->PixelInfo.WindowWidth));
                m_windowCenter = static_cast<int>(std::lround(m_volume->PixelInfo.WindowCenter));
                qCInfo(lcWidgetDicom)
                        << "Using DICOM window from metadata (width > 0). Width:"
                        << m_windowWidth
                        << "Center:"
                        << m_windowCenter;
        }
	else
	{
		setDefaultWindowLevelFromRange();
	}
	setInvertColors(m_volume->PixelInfo.InvertMonochrome);
	setWindowWidthCenter(m_windowWidth, m_windowCenter);
	qCInfo(lcWidgetDicom)
		<< "Initial window configured. Width:"
		<< m_windowWidth
		<< "Center:"
		<< m_windowCenter
		<< "Invert:"
		<< m_colorsInverted;
}

void asclepios::gui::vtkWidgetDICOM::setDefaultWindowLevelFromRange()
{
	auto* const scalars = m_volume && m_volume->ImageData
		                      ? m_volume->ImageData->GetPointData()->GetScalars()
		                      : nullptr;
	if (!scalars)
	{
		m_windowWidth = 4096;
		m_windowCenter = 2048;
		qCWarning(lcWidgetDicom)
			<< "Fallback window level because scalars were unavailable.";
		return;
	}
	double range[2] = {0.0, 0.0};
	scalars->GetRange(range);
	m_windowWidth = static_cast<int>(std::round(range[1] - range[0]));
	m_windowCenter = static_cast<int>(std::round((range[1] + range[0]) * 0.5));
	if (m_windowWidth <= 0)
	{
		m_windowWidth = 4096;
	}
	qCInfo(lcWidgetDicom)
		<< "Computed window from scalar range:"
		<< range[0]
		<< range[1]
		<< "Width:"
		<< m_windowWidth
		<< "Center:"
		<< m_windowCenter;
}

void asclepios::gui::vtkWidgetDICOM::SetSliceOrientation(const int orientation)
{
	if (orientation < SLICE_ORIENTATION_YZ || orientation > SLICE_ORIENTATION_XY)
	{
		return;
	}
	if (m_sliceOrientation == orientation)
	{
		return;
	}
	m_sliceOrientation = orientation;
	updateSliceRange();
	UpdateDisplayExtent();
}

void asclepios::gui::vtkWidgetDICOM::SetSliceOrientationToXY()
{
	SetSliceOrientation(SLICE_ORIENTATION_XY);
}

void asclepios::gui::vtkWidgetDICOM::SetSliceOrientationToXZ()
{
	SetSliceOrientation(SLICE_ORIENTATION_XZ);
}

void asclepios::gui::vtkWidgetDICOM::SetSliceOrientationToYZ()
{
	SetSliceOrientation(SLICE_ORIENTATION_YZ);
}

void asclepios::gui::vtkWidgetDICOM::SetSlice(const int slice)
{
	const int clamped = std::clamp(slice, m_sliceMin, m_sliceMax);
	if (m_currentSlice == clamped)
	{
		return;
	}
	m_currentSlice = clamped;
	UpdateDisplayExtent();
}

void asclepios::gui::vtkWidgetDICOM::updateSliceRange()
{
	int extent[6] = {0, -1, 0, -1, 0, -1};
	if (m_windowLevelColors)
	{
		m_windowLevelColors->UpdateInformation();
		if (auto* info = m_windowLevelColors->GetOutputInformation(0))
		{
			if (info->Has(vtkStreamingDemandDrivenPipeline::WHOLE_EXTENT()))
			{
				info->Get(vtkStreamingDemandDrivenPipeline::WHOLE_EXTENT(), extent);
			}
		}
	}
	if ((extent[1] < extent[0] || extent[3] < extent[2] || extent[5] < extent[4]) && m_volume && m_volume->ImageData)
	{
		m_volume->ImageData->GetExtent(extent);
	}

	switch (m_sliceOrientation)
	{
	case SLICE_ORIENTATION_XY:
		m_sliceMin = extent[4];
		m_sliceMax = extent[5];
		break;
	case SLICE_ORIENTATION_XZ:
		m_sliceMin = extent[2];
		m_sliceMax = extent[3];
		break;
	case SLICE_ORIENTATION_YZ:
	default:
		m_sliceMin = extent[0];
		m_sliceMax = extent[1];
		break;
	}

	if (m_sliceMin > m_sliceMax)
	{
		std::swap(m_sliceMin, m_sliceMax);
	}
	m_currentSlice = std::clamp(m_currentSlice, m_sliceMin, m_sliceMax);
}

void asclepios::gui::vtkWidgetDICOM::updateActorExtentWithInformation(vtkInformation* info)
{
	int extent[6] = {0, -1, 0, -1, 0, -1};
	auto isExtentValid = [](const int* candidate) -> bool
	{
		return candidate[1] >= candidate[0] &&
			candidate[3] >= candidate[2] &&
			candidate[5] >= candidate[4];
	};

	if (info && info->Has(vtkStreamingDemandDrivenPipeline::WHOLE_EXTENT()))
	{
		info->Get(vtkStreamingDemandDrivenPipeline::WHOLE_EXTENT(), extent);
	}

	if (!isExtentValid(extent) && m_volume && m_volume->ImageData)
	{
		m_volume->ImageData->GetExtent(extent);
	}

	const int safeSlice = std::clamp(m_currentSlice, m_sliceMin, m_sliceMax);
	switch (m_sliceOrientation)
	{
	case SLICE_ORIENTATION_XY:
		extent[4] = safeSlice;
		extent[5] = safeSlice;
		break;
	case SLICE_ORIENTATION_XZ:
		extent[2] = safeSlice;
		extent[3] = safeSlice;
		break;
	case SLICE_ORIENTATION_YZ:
	default:
		extent[0] = safeSlice;
		extent[1] = safeSlice;
		break;
	}

	m_imageActor->SetDisplayExtent(extent);
	m_imageActor->Modified();
}

void asclepios::gui::vtkWidgetDICOM::UpdateDisplayExtent()
{
	if (!m_windowLevelColors || !m_imageActor)
	{
		qCWarning(lcWidgetDicom) << "UpdateDisplayExtent aborted - missing filter or actor.";
		return;
	}

	m_windowLevelColors->UpdateInformation();
	auto* info = m_windowLevelColors->GetOutputInformation(0);

        double sanitizedSpacing[3] = {1.0, 1.0, 1.0};
        bool spacingSanitized = false;

	auto mergeSpacing = [&](const double* source)
	{
		if (!source)
		{
			return;
		}
		for (int axis = 0; axis < 3; ++axis)
		{
			if (isMagnitudeValid(source[axis]))
			{
				sanitizedSpacing[axis] = std::abs(source[axis]);
			}
		}
	};

	if (m_volume)
	{
		mergeSpacing(m_volume->Geometry.Spacing);
	}

        auto* const inputImage = m_volume ? m_volume->ImageData.GetPointer() : nullptr;
        double originalImageSpacing[3] = {1.0, 1.0, 1.0};
        if (inputImage)
        {
                const double* currentSpacing = inputImage->GetSpacing();
                if (currentSpacing)
                {
                        for (int axis = 0; axis < 3; ++axis)
                        {
                                originalImageSpacing[axis] = currentSpacing[axis];
                        }
                        mergeSpacing(currentSpacing);
                }
                m_originalSpacing = {originalImageSpacing[0], originalImageSpacing[1], originalImageSpacing[2]};
                m_hasOriginalSpacing = true;
        }
        else
        {
                m_originalSpacing = {1.0, 1.0, 1.0};
                m_hasOriginalSpacing = false;
        }

        bool needsOutInfoUpdate = (info == nullptr);
	if (info)
	{
		const double* infoSpacing = info->Get(vtkDataObject::SPACING());
		if (!infoSpacing)
		{
			needsOutInfoUpdate = true;
		}
		else
		{
			for (int axis = 0; axis < 3; ++axis)
			{
				if (!isMagnitudeValid(infoSpacing[axis]))
				{
					needsOutInfoUpdate = true;
				}
			}
			mergeSpacing(infoSpacing);
			for (int axis = 0; axis < 3; ++axis)
			{
				if (std::abs(std::abs(infoSpacing[axis]) - sanitizedSpacing[axis]) > epsilon)
				{
					needsOutInfoUpdate = true;
					break;
				}
			}
		}
	}
        if (needsOutInfoUpdate && info)
        {
                info->Set(vtkDataObject::SPACING(), sanitizedSpacing, 3);
                spacingSanitized = true;
        }

        if (inputImage)
        {
                bool requiresRepair = false;
                for (int axis = 0; axis < 3; ++axis)
                {
                        if (!isMagnitudeValid(originalImageSpacing[axis]))
                        {
                                requiresRepair = true;
                                break;
                        }
                }

                if (requiresRepair)
                {
                        inputImage->SetSpacing(sanitizedSpacing);
                        spacingSanitized = true;
                }
        }

        if (spacingSanitized)
        {
                qCWarning(lcWidgetDicom)
                        << "Sanitized image spacing to"
                        << sanitizedSpacing[0]
                        << sanitizedSpacing[1]
                        << sanitizedSpacing[2];
        }

        bool spacingChangedSignificantly = !m_hasCachedSpacing;
        if (!spacingChangedSignificantly)
        {
                for (int axis = 0; axis < 3; ++axis)
                {
                        if (std::abs(m_cachedSpacing[axis] - sanitizedSpacing[axis]) > spacingChangeThreshold)
                        {
                                spacingChangedSignificantly = true;
                                break;
                        }
                }
        }

        m_cachedSpacing = {sanitizedSpacing[0], sanitizedSpacing[1], sanitizedSpacing[2]};
        m_hasCachedSpacing = true;

	updateSliceRange();
	updateActorExtentWithInformation(info);

	m_windowLevelColors->Update();
	info = m_windowLevelColors->GetOutputInformation(0);
	if (!info)
	{
		return;
	}

	if (!info->Get(vtkDataObject::SPACING()))
	{
		info->Set(vtkDataObject::SPACING(), sanitizedSpacing, 3);
	}

	if (!m_renderer)
	{
		return;
	}

	auto* const camera = m_renderer->GetActiveCamera();
	if (!camera)
	{
		return;
	}

	bool cameraInvalid = false;
	const double* cameraPosition = camera->GetPosition();
	const double* cameraFocalPoint = camera->GetFocalPoint();
	for (int axis = 0; axis < 3; ++axis)
	{
		if (!std::isfinite(cameraPosition[axis]) || !std::isfinite(cameraFocalPoint[axis]))
		{
			cameraInvalid = true;
			break;
		}
	}

        if (spacingChangedSignificantly || cameraInvalid || m_lastSliceOrientation != m_sliceOrientation)
        {
                m_renderer->ResetCamera();
                const double* resetPosition = camera->GetPosition();
                const double* resetFocalPoint = camera->GetFocalPoint();
                qCInfo(lcWidgetDicom)
                        << "Reset camera due to"
                        << (spacingChangedSignificantly ? "spacing update" : (cameraInvalid ? "invalid camera" : "orientation change"))
                        << "position"
                        << resetPosition[0]
                        << resetPosition[1]
			<< resetPosition[2]
			<< "focal"
			<< resetFocalPoint[0]
			<< resetFocalPoint[1]
			<< resetFocalPoint[2];
                camera->ParallelProjectionOn();
                m_lastSliceOrientation = m_sliceOrientation;
                m_cachedCameraPosition = {resetPosition[0], resetPosition[1], resetPosition[2]};
                m_cachedCameraFocalPoint = {resetFocalPoint[0], resetFocalPoint[1], resetFocalPoint[2]};
                m_hasCachedCamera = true;
        }

        if (!spacingChangedSignificantly && m_hasCachedCamera)
        {
                bool cameraShifted = false;
                for (int axis = 0; axis < 3; ++axis)
                {
                        if (std::abs(cameraPosition[axis] - m_cachedCameraPosition[axis]) > cameraChangeThreshold ||
                                std::abs(cameraFocalPoint[axis] - m_cachedCameraFocalPoint[axis]) > cameraChangeThreshold)
                        {
                                cameraShifted = true;
                                break;
                        }
                }
                if (!cameraShifted)
                {
                        camera->SetPosition(m_cachedCameraPosition.data());
                        camera->SetFocalPoint(m_cachedCameraFocalPoint.data());
                }
        }

	auto* const interactorStyle = m_interactor
		                              ? vtkInteractorStyleImage::SafeDownCast(m_interactor->GetInteractorStyle())
		                              : nullptr;

	if (interactorStyle && interactorStyle->GetAutoAdjustCameraClippingRange())
	{
		m_renderer->ResetCameraClippingRange();
	}
	else
	{
		double bounds[6] = {0.0};
		m_imageActor->GetBounds(bounds);
		const int* displayExtent = m_imageActor->GetDisplayExtent();
		qCInfo(lcWidgetDicom)
			<< "Actor bounds"
			<< bounds[0]
			<< bounds[1]
			<< bounds[2]
			<< bounds[3]
			<< bounds[4]
			<< bounds[5]
			<< "display extent"
			<< displayExtent[0]
			<< displayExtent[1]
			<< displayExtent[2]
			<< displayExtent[3]
			<< displayExtent[4]
			<< displayExtent[5];

		const int axis = (m_sliceOrientation == SLICE_ORIENTATION_XY)
			                 ? 2
			                 : (m_sliceOrientation == SLICE_ORIENTATION_XZ ? 1 : 0);
		const double spos = bounds[axis * 2];
		const double cpos = camera->GetPosition()[axis];
		const double range = std::fabs(spos - cpos);
		const double* spacing = info->Get(vtkDataObject::SPACING());
		double safeSpacing[3] = {sanitizedSpacing[0], sanitizedSpacing[1], sanitizedSpacing[2]};
		if (m_volume)
		{
			for (int index = 0; index < 3; ++index)
			{
				if (isMagnitudeValid(m_volume->Geometry.Spacing[index]))
				{
					safeSpacing[index] = std::abs(m_volume->Geometry.Spacing[index]);
				}
			}
		}
		if (spacing)
		{
			for (int index = 0; index < 3; ++index)
			{
				if (isMagnitudeValid(spacing[index]))
				{
					safeSpacing[index] = std::abs(spacing[index]);
				}
			}
		}

		double avgSpacing = (safeSpacing[0] + safeSpacing[1] + safeSpacing[2]) / 3.0;
		if (!std::isfinite(avgSpacing) || avgSpacing <= epsilon)
		{
			avgSpacing = 1.0;
		}
		const double halfThickness = std::max(avgSpacing * 3.0, epsilon);
		double nearPlane = range - halfThickness;
		double farPlane = range + halfThickness;

		const double minNearPlane = std::max(epsilon, halfThickness * 0.1);
		if (!std::isfinite(nearPlane) || nearPlane <= minNearPlane)
		{
			nearPlane = minNearPlane;
		}
		if (!std::isfinite(farPlane) || farPlane <= nearPlane)
		{
			farPlane = nearPlane + halfThickness;
		}

		camera->SetClippingRange(nearPlane, farPlane);
		double computedNear = 0.0;
		double computedFar = 0.0;
		camera->GetClippingRange(computedNear, computedFar);
                qCInfo(lcWidgetDicom)
                        << "Clipping range set to"
                        << computedNear
                        << computedFar
                        << "range baseline"
			<< range
			<< "axis spacing"
			<< avgSpacing
			<< "parallel scale"
			<< camera->GetParallelScale();
                m_lastClippingRange = range;
                m_lastAvgSpacing = avgSpacing;
        }

        const double* finalCameraPosition = camera->GetPosition();
        const double* finalCameraFocalPoint = camera->GetFocalPoint();
        m_cachedCameraPosition = {finalCameraPosition[0], finalCameraPosition[1], finalCameraPosition[2]};
        m_cachedCameraFocalPoint = {finalCameraFocalPoint[0], finalCameraFocalPoint[1], finalCameraFocalPoint[2]};
        m_hasCachedCamera = true;
}

double asclepios::gui::vtkWidgetDICOM::getZoomFactor()
{
	if (!m_imageActor)
	{
		qCWarning(lcWidgetDicom) << "getZoomFactor called without an image actor.";
		return 0.0;
	}
	const int* actorExtent = m_imageActor->GetDisplayExtent();
	if (!actorExtent)
	{
		qCWarning(lcWidgetDicom) << "Missing display extent for zoom computation.";
		return 0.0;
	}
	const auto [x, y] = getImageActorDisplayValue();
	const double denominator = static_cast<double>(actorExtent[1]) - static_cast<double>(actorExtent[0]) + 1.0;
	if (!std::isfinite(denominator) || denominator <= 0.0)
	{
		return 0.0;
	}
	const double numerator = static_cast<double>(std::abs(y - x));
	return numerator / denominator;
}

std::tuple<int, int> asclepios::gui::vtkWidgetDICOM::getImageActorDisplayValue()
{
	if (!m_imageActor || !m_renderWindow || !m_renderer)
	{
		return {0, 0};
	}
	double actorBounds[6] = {0.0};
	m_imageActor->GetBounds(actorBounds);
	vtkNew<vtkCoordinate> coordinate;
	coordinate->SetCoordinateSystemToWorld();
	coordinate->SetValue(actorBounds[0], 0, 0);
	const int x = coordinate->GetComputedDisplayValue(m_renderer)[0];
	coordinate->SetValue(actorBounds[1], 0, 0);
	const int y = coordinate->GetComputedDisplayValue(m_renderer)[0];
	return std::make_tuple(x, y);
}
