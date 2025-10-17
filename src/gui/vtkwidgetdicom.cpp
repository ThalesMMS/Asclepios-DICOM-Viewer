#include "vtkwidgetdicom.h"

#include <vtkCamera.h>
#include <vtkCoordinate.h>
#include <vtkImageActor.h>
#include <vtkImageData.h>
#include <vtkImageMapToWindowLevelColors.h>
#include <vtkImageProperty.h>
#include <vtkObjectFactory.h>
#include <vtkPointData.h>
#include <vtkRenderWindow.h>
#include <vtkRenderer.h>
#include <vtkRendererCollection.h>
#include <vtkStreamingDemandDrivenPipeline.h>
#include <vtkWindowLevelLookupTable.h>
#include <vtkInformation.h>
#include <vtkInteractorStyleImage.h>

#include <QLoggingCategory>

#include <algorithm>
#include <cmath>

Q_LOGGING_CATEGORY(lcWidgetDicom, "asclepios.gui.vtkwidgetdicom")
vtkStandardNewMacro(asclepios::gui::vtkWidgetDICOM)

namespace
{
	constexpr double epsilon = 1e-8;

	void copyDirectionToImage(vtkImageData* imageData, const vtkMatrix4x4* direction)
	{
#if VTK_MAJOR_VERSION >= 9
		if (imageData && direction)
		{
			imageData->SetDirectionMatrix(const_cast<vtkMatrix4x4*>(direction));
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
		auto* const scalars = imageData->GetPointData()->GetScalars();
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
	}
}

asclepios::gui::vtkWidgetDICOM::vtkWidgetDICOM()
	: m_windowLevelFilter(std::make_unique<WindowLevelFilter>())
{
}

void asclepios::gui::vtkWidgetDICOM::setVolume(const std::shared_ptr<core::DicomVolume>& t_volume)
{
	m_volume = t_volume;
	if (!m_volume || !m_volume->ImageData)
	{
		qCWarning(lcWidgetDicom) << "Clearing DICOM widget input.";
		Superclass::SetInputData(nullptr);
		return;
	}

        qCInfo(lcWidgetDicom)
                << "Configuring DICOM widget with dimensions"
                << m_volume->ImageData->GetDimensions()[0]
                << m_volume->ImageData->GetDimensions()[1]
                << m_volume->ImageData->GetDimensions()[2];

        copyDirectionToImage(m_volume->ImageData, m_volume->Direction);
        const bool requiresRescale =
                (std::abs(m_volume->PixelInfo.RescaleSlope - 1.0) > epsilon) ||
                (std::abs(m_volume->PixelInfo.RescaleIntercept) > epsilon);
        if (requiresRescale)
        {
                applySlopeIntercept(m_volume->ImageData, m_volume->PixelInfo);
                m_volume->PixelInfo.RescaleSlope = 1.0;
                m_volume->PixelInfo.RescaleIntercept = 0.0;
        }

        Superclass::SetInputData(m_volume->ImageData);
	SetSliceOrientationToXY();
	SetSlice(0);
	setInitialWindowWidthCenter();
	GetRenderer()->GetActiveCamera()->ParallelProjectionOn();
	applyDirectionMatrix();
	SetColorWindow(static_cast<double>(m_windowWidth));
	SetColorLevel(static_cast<double>(m_windowCenter));
	Render();
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

void asclepios::gui::vtkWidgetDICOM::setInvertColors(bool t_flag)
{
	m_colorsInverted = t_flag;
	updateScalarsForInversion();
	Render();
}

void asclepios::gui::vtkWidgetDICOM::updateScalarsForInversion()
{
	if (!m_volume || !m_volume->ImageData)
	{
		return;
	}
	if (!m_colorsInverted)
	{
		return;
	}
	auto* const scalars = m_volume->ImageData->GetPointData()->GetScalars();
	if (!scalars)
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
}

void asclepios::gui::vtkWidgetDICOM::setWindowWidthCenter(const int t_width, const int t_center)
{
	m_windowLevelFilter->setWindowWidthCenter(t_width, t_center);
	m_windowWidth = t_width;
	m_windowCenter = t_center;
	Superclass::Render();
}

void asclepios::gui::vtkWidgetDICOM::setInitialWindowWidthCenter()
{
	if (!m_volume || !m_volume->ImageData)
	{
		qCWarning(lcWidgetDicom) << "Missing volume while initializing window/level.";
		return;
	}
	if (m_volume->PixelInfo.WindowWidth > 0.0 && m_volume->PixelInfo.WindowCenter != 0.0)
	{
		m_windowWidth = static_cast<int>(std::round(m_volume->PixelInfo.WindowWidth));
		m_windowCenter = static_cast<int>(std::round(m_volume->PixelInfo.WindowCenter));
	}
	else
	{
		setDefaultWindowLevelFromRange();
	}
	setInvertColors(m_volume->PixelInfo.InvertMonochrome);
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
}

void asclepios::gui::vtkWidgetDICOM::SetInputData(vtkImageData* in)
{
	if (!in)
	{
		qCWarning(lcWidgetDicom) << "SetInputData called with null image.";
		Superclass::SetInputData(nullptr);
		return;
	}
	Superclass::SetInputData(in);

	vtkImageData* const baseInput = vtkImageData::SafeDownCast(GetInput());
	vtkImageData* const imageData = baseInput ? baseInput : in;
	GetWindowLevel()->SetInputData(imageData);
	GetWindowLevel()->UpdateInformation();
	GetWindowLevel()->GetOutput()->SetSpacing(imageData->GetSpacing());
	UpdateDisplayExtent();
}

void asclepios::gui::vtkWidgetDICOM::UpdateDisplayExtent()
{
	auto* const input = GetInputAlgorithm();
	if (!input || !ImageActor)
	{
		qCWarning(lcWidgetDicom) << "UpdateDisplayExtent aborted - missing input or actor.";
		return;
	}

	input->UpdateInformation();
	auto* outInfo = input->GetOutputInformation(0);

	constexpr double spacingUpperBound = 1e4;
	auto isMagnitudeValid = [spacingUpperBound](double value) -> bool
	{
		const double absValue = std::abs(value);
		return std::isfinite(value) && value > 0.0 && absValue > epsilon && absValue < spacingUpperBound;
	};

	double sanitizedSpacing[3] = {1.0, 1.0, 1.0};
	bool mutatedSpacing = false;

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

	auto* const inputImage = vtkImageData::SafeDownCast(GetInput());
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
	}

	bool needsOutInfoUpdate = (outInfo == nullptr);
	if (outInfo)
	{
		const double* infoSpacing = outInfo->Get(vtkDataObject::SPACING());
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
	else
	{
		mutatedSpacing = true;
	}

	if (needsOutInfoUpdate && outInfo)
	{
		outInfo->Set(vtkDataObject::SPACING(), sanitizedSpacing, 3);
		mutatedSpacing = true;
	}

	if (inputImage)
	{
		bool spacingChanged = false;
		for (int axis = 0; axis < 3; ++axis)
		{
			if (std::abs(std::abs(originalImageSpacing[axis]) - sanitizedSpacing[axis]) > epsilon)
			{
				spacingChanged = true;
				break;
			}
		}
		if (spacingChanged)
		{
			inputImage->SetSpacing(sanitizedSpacing);
			mutatedSpacing = true;
		}
	}

	if (mutatedSpacing)
	{
		qCWarning(lcWidgetDicom)
			<< "Sanitized image spacing to"
			<< sanitizedSpacing[0]
			<< sanitizedSpacing[1]
			<< sanitizedSpacing[2];
	}

	Superclass::UpdateDisplayExtent();

	input->UpdateInformation();
	outInfo = input->GetOutputInformation(0);
	if (!outInfo)
	{
		return;
	}

	if (!outInfo->Get(vtkDataObject::SPACING()))
	{
		outInfo->Set(vtkDataObject::SPACING(), sanitizedSpacing, 3);
	}

	auto* const renderer = GetRenderer();
	if (!renderer)
	{
		return;
	}

	auto* const camera = renderer->GetActiveCamera();
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

	if ((mutatedSpacing || cameraInvalid) && ImageActor)
	{
		renderer->ResetCamera();
		const double* resetPosition = camera->GetPosition();
		const double* resetFocalPoint = camera->GetFocalPoint();
		qCInfo(lcWidgetDicom)
			<< "Reset camera due to"
			<< (mutatedSpacing ? "spacing update" : "invalid camera")
			<< "position"
			<< resetPosition[0]
			<< resetPosition[1]
			<< resetPosition[2]
			<< "focal"
			<< resetFocalPoint[0]
			<< resetFocalPoint[1]
			<< resetFocalPoint[2];
	}

	if (InteractorStyle && InteractorStyle->GetAutoAdjustCameraClippingRange())
	{
		renderer->ResetCameraClippingRange();
		return;
	}

	double bounds[6] = {0.0};
	ImageActor->GetBounds(bounds);
	const int* displayExtent = ImageActor->GetDisplayExtent();
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
	const double spos = bounds[SliceOrientation * 2];
	const double cpos = camera->GetPosition()[SliceOrientation];
	const double range = std::fabs(spos - cpos);
	const double* spacing = outInfo->Get(vtkDataObject::SPACING());
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
	m_lastSliceOrientation = SliceOrientation;
}

void asclepios::gui::vtkWidgetDICOM::changeWindowWidthCenter(const int t_width, const int t_center)
{
	m_windowWidth += t_width;
	m_windowCenter += t_center;
	setWindowWidthCenter(m_windowWidth, m_windowCenter);
}

double asclepios::gui::vtkWidgetDICOM::getZoomFactor()
{
	auto* const imageActor = GetImageActor();
	if (!imageActor)
	{
		qCWarning(lcWidgetDicom) << "getZoomFactor called without an image actor.";
		return 0.0;
	}
	auto* const actorExtent = imageActor->GetDisplayExtent();
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
	auto* const imageActor = GetImageActor();
	if (!imageActor)
	{
		return {0, 0};
	}
	double actorBounds[6] = {0.0};
	imageActor->GetBounds(actorBounds);
	vtkNew<vtkCoordinate> coordinate;
	coordinate->SetCoordinateSystemToWorld();
	coordinate->SetValue(actorBounds[0], 0, 0);
	const int x = coordinate->GetComputedDisplayValue(
		GetRenderWindow()->GetRenderers()->GetFirstRenderer())[0];
	coordinate->SetValue(actorBounds[1], 0, 0);
	const int y = coordinate->GetComputedDisplayValue(
		GetRenderWindow()->GetRenderers()->GetFirstRenderer())[0];
	return std::make_tuple(x, y);
}

void asclepios::gui::vtkWidgetDICOM::setMONOCHROME1WindowWidthCenter()
{
	vtkNew<vtkWindowLevelLookupTable> table;
	table->SetWindow(std::abs(m_windowWidth));
	table->SetLevel(m_windowCenter);
	table->SetInverseVideo(true);
	table->Build();
	table->BuildSpecialColors();
	GetWindowLevel()->SetLookupTable(table);
	m_windowLevelFilter->setDICOMWidget(this);
}

void asclepios::gui::vtkWidgetDICOM::setMONOCHROME2WindowWidthCenter()
{
	m_windowLevelFilter->setDICOMWidget(this);
	m_windowLevelFilter->setWindowWidthCenter(m_windowWidth, m_windowCenter);
}
