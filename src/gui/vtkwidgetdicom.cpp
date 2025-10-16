#include "vtkwidgetdicom.h"
#include <vtkCamera.h>
#include <vtkCoordinate.h>
#include <vtkAlgorithm.h>
#include <vtkDICOMApplyPalette.h>
#include <vtkDICOMDictHash.h>
#include <vtkDICOMMetaData.h>
#include <vtkDICOMValue.h>
#include <vtkDataObject.h>
#include <vtkImageActor.h>
#include <vtkImageData.h>
#include <vtkImageMapper3D.h>
#include <vtkImageMapToWindowLevelColors.h>
#include <vtkImageStack.h>
#include <vtkInteractorStyleImage.h>
#include <vtkInformation.h>
#include <vtkObjectFactory.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRendererCollection.h>
#include <vtkStreamingDemandDrivenPipeline.h>
#include <vtkWindowLevelLookupTable.h>
#include <QDebug>
#include <cmath>
#include <limits>

vtkStandardNewMacro(asclepios::gui::vtkWidgetDICOM)


void asclepios::gui::vtkWidgetDICOM::setImageReader(vtkDICOMReader* t_reader)
{
        m_reader = t_reader;
        if (m_reader)
        {
                setImageMetaData(m_reader->GetMetaData());
        }
        else
        {
                setImageMetaData(nullptr);
        }

        vtkImageData* readerOutput = nullptr;
        if (m_reader)
        {
                readerOutput = m_reader->GetOutput();
        }

        if (readerOutput)
        {
                const int* extent = readerOutput->GetExtent();
                const int sizeX = extent ? extent[1] - extent[0] + 1 : 0;
                qInfo() << "[vtkWidgetDICOM] Reader set. Output extent:" << sizeX;
                SetInputData(readerOutput);
                if (m_reader->HasOverlay())
                {
                        qInfo() << "[vtkWidgetDICOM] Overlay detected. Creating actor.";
                        createOverlayActor();
                }
        }
        else
        {
                qInfo() << "[vtkWidgetDICOM] Reader cleared.";
                vtkImageViewer2::SetInputData(nullptr);
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::setInvertColors(const bool& t_flag)
{
	m_windowLevelFilter->setAreColorsInverted(t_flag);
	changeWindowWidthCenter(0, 0);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::setWindowWidthCenter(const int& t_width, const int& t_center)
{
	m_windowLevelFilter->setWindowWidthCenter(t_width, t_center);
	m_windowWidth = t_width;
	m_windowCenter = t_center;
	Superclass::Render();
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::setInitialWindowWidthCenter()
{
	if (m_imageMetaData)
	{
		if (m_imageMetaData->Get(
			DC::PhotometricInterpretation).Matches("MONOCHROME1"))
		{
			setMONOCHROME1WindowWidthCenter();
		}
		else if (m_imageMetaData->Get(
			DC::PhotometricInterpretation).Matches("MONOCHROME2"))
		{
			setMONOCHROME2WindowWidthCenter();
		}
		else if (m_imageMetaData->Get(
			DC::PhotometricInterpretation).Matches("PALETTE COLOR"))
		{
			setPALETTECOLORWindowWidthCenter();
		}
		else
		{
			GetWindowLevel()->SetOutputFormatToRGB();
		}
		GetRenderer()->GetActiveCamera()->ParallelProjectionOn();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::SetInputData(vtkImageData* in)
{
        if (!in)
        {
                qWarning() << "[vtkWidgetDICOM] SetInputData called with null image";
                Superclass::SetInputData(nullptr);
                return;
        }

        Superclass::SetInputData(in);

        vtkImageData* const baseInput = vtkImageData::SafeDownCast(GetInput());
        vtkImageData* const imageData = baseInput ? baseInput : in;

        // Ensure the image has a sane spacing before passing it to the VTK pipeline.
        const double* currentSpacing = imageData->GetSpacing();
        double spacing[3] = {
                currentSpacing ? currentSpacing[0] : 0.0,
                currentSpacing ? currentSpacing[1] : 0.0,
                currentSpacing ? currentSpacing[2] : 0.0
        };

	auto assignSpacingComponent =
		[&](const vtkDICOMValue& value, int componentIndex, int spacingIndex) -> bool
	{
		if (!value.IsValid())
		{
			return false;
		}
		if (componentIndex < 0)
		{
			componentIndex = 0;
		}
		const auto count = value.GetNumberOfValues();
		if (count == 0 || static_cast<size_t>(componentIndex) >= count)
		{
			return false;
		}
		const double candidate = value.GetDouble(componentIndex);
		if (!std::isfinite(candidate) || candidate <= 0.0)
		{
			return false;
		}
		const double existing = spacing[spacingIndex];
		if (!std::isfinite(existing) || existing <= 0.0 ||
			std::abs(existing - candidate) > std::numeric_limits<double>::epsilon())
		{
			spacing[spacingIndex] = candidate;
			return true;
		}
		return false;
	};

	bool spacingModified = false;
	if (m_imageMetaData)
	{
		const auto& pixelSpacing =
			m_imageMetaData->GetAttributeValue(0, DC::PixelSpacing);
		spacingModified |= assignSpacingComponent(pixelSpacing, 0, 0);
		spacingModified |= assignSpacingComponent(pixelSpacing, 1, 1);

		if ((!std::isfinite(spacing[0]) || spacing[0] <= 0.0) ||
			(!std::isfinite(spacing[1]) || spacing[1] <= 0.0))
		{
			const auto& imagerPixelSpacing =
				m_imageMetaData->GetAttributeValue(0, DC::ImagerPixelSpacing);
			spacingModified |= assignSpacingComponent(imagerPixelSpacing, 0, 0);
			spacingModified |= assignSpacingComponent(imagerPixelSpacing, 1, 1);
		}

		spacingModified |= assignSpacingComponent(
			m_imageMetaData->GetAttributeValue(0, DC::SpacingBetweenSlices), 0, 2);
		if (!std::isfinite(spacing[2]) || spacing[2] <= 0.0)
		{
			spacingModified |= assignSpacingComponent(
				m_imageMetaData->GetAttributeValue(0, DC::SliceThickness), 0, 2);
		}

		if ((!std::isfinite(spacing[2]) || spacing[2] <= 0.0) && m_reader && m_reader->GetOutput())
		{
			const int* extent = m_reader->GetOutput()->GetExtent();
			const int sliceCount = extent[5] - extent[4] + 1;
			if (sliceCount > 1)
			{
				if (auto* const meta = m_reader->GetMetaData())
				{
					const int firstSlice = extent[4];
					const int secondSlice = firstSlice + 1;
					const int firstFile = meta->GetFileIndex(firstSlice);
					const int secondFile = meta->GetFileIndex(secondSlice);
					int firstFrame = meta->GetFrameIndex(firstSlice);
					int secondFrame = meta->GetFrameIndex(secondSlice);
					if (firstFrame < 0)
					{
						firstFrame = 0;
					}
					if (secondFrame < 0)
					{
						secondFrame = 0;
					}
					if (firstFile >= 0 && secondFile >= 0 &&
						firstFrame >= 0 && secondFrame >= 0)
					{
						const auto& ipp0 = meta->GetAttributeValue(
							firstFile, firstFrame, DC::ImagePositionPatient);
						const auto& ipp1 = meta->GetAttributeValue(
							secondFile, secondFrame, DC::ImagePositionPatient);
						if (ipp0.IsValid() && ipp1.IsValid() &&
							ipp0.GetNumberOfValues() >= 3 && ipp1.GetNumberOfValues() >= 3)
						{
							const double dx = ipp1.GetDouble(0) - ipp0.GetDouble(0);
							const double dy = ipp1.GetDouble(1) - ipp0.GetDouble(1);
							const double dz = ipp1.GetDouble(2) - ipp0.GetDouble(2);
							const double distance = std::sqrt(dx * dx + dy * dy + dz * dz);
							if (std::isfinite(distance) && distance > 0.0)
							{
								spacing[2] = distance;
								spacingModified = true;
							}
						}
					}
				}
			}
		}
	}

	bool spacingNormalized = false;
	for (double& axisSpacing : spacing)
	{
		if (!std::isfinite(axisSpacing) || axisSpacing <= 0.0)
		{
			axisSpacing = 1.0;
			spacingNormalized = true;
		}
	}

        if (spacingModified || spacingNormalized)
        {
                imageData->SetSpacing(spacing);
                if (spacingNormalized)
                {
                        qWarning() << "[vtkWidgetDICOM] Invalid input spacing detected. Normalized to"
                                << spacing[0] << spacing[1] << spacing[2];
                }
		else
		{
			qInfo() << "[vtkWidgetDICOM] Synchronized spacing from DICOM metadata:"
				<< spacing[0] << spacing[1] << spacing[2];
		}
	}

        WindowLevel->SetInputData(imageData);
	WindowLevel->UpdateInformation();
	WindowLevel->GetOutput()->SetSpacing(spacing);
	if (auto* const inputAlgorithm = WindowLevel->GetInputAlgorithm())
	{
		if (auto* const info = inputAlgorithm->GetOutputInformation(0))
		{
			info->Set(vtkDataObject::SPACING(), spacing, 3);
		}
	}

	UpdateDisplayExtent();
	qInfo() << "[vtkWidgetDICOM] Input data set. Spacing:"
		<< spacing[0] << spacing[1] << spacing[2];
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::UpdateDisplayExtent()
{
	auto* const input = GetInputAlgorithm();
	if (!input || !ImageActor)
	{
		qWarning() << "[vtkWidgetDICOM] UpdateDisplayExtent aborted - missing input or actor";
		return;
	}

	input->UpdateInformation();
	auto* const outInfo = input->GetOutputInformation(0);
	if (!outInfo)
	{
		qWarning() << "[vtkWidgetDICOM] Output information missing";
		return;
	}

	int* const wholeExtent = outInfo->Get(vtkStreamingDemandDrivenPipeline::WHOLE_EXTENT());
	if (!wholeExtent)
	{
		qWarning() << "[vtkWidgetDICOM] Whole extent missing";
		return;
	}

	const int sliceMin = wholeExtent[SliceOrientation * 2];
	const int sliceMax = wholeExtent[SliceOrientation * 2 + 1];
	if (Slice < sliceMin || Slice > sliceMax)
	{
		Slice = static_cast<int>((sliceMin + sliceMax) * 0.5);
	}

	switch (SliceOrientation)
	{
	case vtkImageViewer2::SLICE_ORIENTATION_XY:
		ImageActor->SetDisplayExtent(
			wholeExtent[0], wholeExtent[1], wholeExtent[2], wholeExtent[3], Slice, Slice);
		break;

	case vtkImageViewer2::SLICE_ORIENTATION_XZ:
		ImageActor->SetDisplayExtent(
			wholeExtent[0], wholeExtent[1], Slice, Slice, wholeExtent[4], wholeExtent[5]);
		break;

	case vtkImageViewer2::SLICE_ORIENTATION_YZ:
		ImageActor->SetDisplayExtent(
			Slice, Slice, wholeExtent[2], wholeExtent[3], wholeExtent[4], wholeExtent[5]);
		break;
	default:
		break;
	}

	if (!Renderer)
	{
		return;
	}

	if (InteractorStyle && InteractorStyle->GetAutoAdjustCameraClippingRange())
	{
		Renderer->ResetCameraClippingRange();
		return;
	}

	auto* const cam = Renderer->GetActiveCamera();
	if (!cam)
	{
		return;
	}

	double bounds[6];
	ImageActor->GetBounds(bounds);
	const double spos = bounds[SliceOrientation * 2];
	const double cpos = cam->GetPosition()[SliceOrientation];
	const double range = std::fabs(spos - cpos);

	const double* infoSpacing = outInfo->Get(vtkDataObject::SPACING());
	double safeSpacing[3] = { 1.0, 1.0, 1.0 };
	if (!infoSpacing)
	{
		if (auto* const image = vtkImageData::SafeDownCast(GetInput()))
		{
			image->GetSpacing(safeSpacing);
		}
		outInfo->Set(vtkDataObject::SPACING(), safeSpacing, 3);
		infoSpacing = safeSpacing;
		qInfo() << "[vtkWidgetDICOM] Propagated spacing metadata from vtkImageData:"
			<< safeSpacing[0] << safeSpacing[1] << safeSpacing[2];
	}

	for (int idx = 0; idx < 3; ++idx)
	{
		if (!std::isfinite(infoSpacing[idx]) || infoSpacing[idx] == 0.0)
		{
			safeSpacing[idx] = 1.0;
		}
		else
		{
			safeSpacing[idx] = infoSpacing[idx];
		}
	}

	const double avgSpacing =
		(safeSpacing[0] + safeSpacing[1] + safeSpacing[2]) / 3.0;
	cam->SetClippingRange(
		range - avgSpacing * 3.0,
		range + avgSpacing * 3.0);
	if (std::abs(range - m_lastClippingRange) > 1e-6 ||
		std::abs(avgSpacing - m_lastAvgSpacing) > 1e-6 ||
		SliceOrientation != m_lastSliceOrientation)
	{
		qInfo() << "[vtkWidgetDICOM] Clipping range updated. Range:" << range
			<< "Avg spacing:" << avgSpacing
			<< "Slice orientation:" << SliceOrientation;
		m_lastClippingRange = range;
		m_lastAvgSpacing = avgSpacing;
		m_lastSliceOrientation = SliceOrientation;
	}
}

//-----------------------------------------------------------------------------
std::tuple<int, int> asclepios::gui::vtkWidgetDICOM::getImageActorDisplayValue()
{
	auto* const actorBounds =
		GetImageActor()->GetBounds();
	vtkNew<vtkCoordinate> coordinate;
	coordinate->SetCoordinateSystemToWorld();
	coordinate->SetValue(actorBounds[0], 0, 0);
	int x = coordinate->GetComputedDisplayValue(
		GetRenderWindow()->GetRenderers()->GetFirstRenderer())[0];
	coordinate->SetValue(actorBounds[1], 0, 0);
	int y = coordinate->GetComputedDisplayValue(
		GetRenderWindow()->GetRenderers()->GetFirstRenderer())[0];
	return std::make_tuple(x, y);
}


//-----------------------------------------------------------------------------
double asclepios::gui::vtkWidgetDICOM::getZoomFactor()
{
        auto* const imageActor = GetImageActor();
        if (!imageActor)
        {
                qWarning() << "[vtkWidgetDICOM] getZoomFactor called without an image actor";
                return 0.0;
        }

        auto* const actorExtend = imageActor->GetDisplayExtent();
        if (!actorExtend)
        {
                qWarning() << "[vtkWidgetDICOM] Missing display extent for zoom computation";
                return 0.0;
        }

        const auto [x, y] = getImageActorDisplayValue();
        const double denominator = static_cast<double>(actorExtend[1])
                - static_cast<double>(actorExtend[0]) + 1.0;
        if (!std::isfinite(denominator) || denominator <= 0.0)
        {
                qWarning() << "[vtkWidgetDICOM] Invalid display extent width:" << denominator
                        << "(extent:" << actorExtend[0] << actorExtend[1] << ')';
                return 0.0;
        }

        const double numerator = static_cast<double>(std::abs(y - x));
        return numerator / denominator;
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::changeWindowWidthCenter(const int& t_width, const int& t_center)
{
	if (m_isOverlay)
	{
		return;
	}
	if (auto* const lookupTable
		= GetWindowLevel()->GetLookupTable(); lookupTable)
	{
		m_windowWidth =
			dynamic_cast<vtkWindowLevelLookupTable*>(lookupTable)->GetWindow();
		m_windowCenter =
			dynamic_cast<vtkWindowLevelLookupTable*>(lookupTable)->GetLevel();
	}
	else
	{
		m_windowWidth = GetWindowLevel()->GetWindow();
		m_windowCenter = GetWindowLevel()->GetLevel();
	}
	m_windowWidth += t_width;
	m_windowCenter += t_center;
	setWindowWidthCenter(m_windowWidth, m_windowCenter);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::createOverlayActor()
{
	if (!m_overlayActor)
	{
		m_overlayActor = vtkSmartPointer<vtkImageActor>::New();
	}
	const auto mapColors = createMapColors();
	auto* const overlayImage = mapColors->GetOutput();
	overlayImage->SetExtent(m_reader->GetOutput()->GetExtent());
	overlayImage->SetSpacing(m_reader->GetOutput()->GetSpacing());
	m_overlayActor->GetMapper()->SetInputData(overlayImage);
	m_overlayActor->SetOpacity(1);
	vtkNew<vtkImageStack> stack;
	stack->AddImage(m_overlayActor);
	Renderer->AddViewProp(stack);
}

//-----------------------------------------------------------------------------
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

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::setMONOCHROME2WindowWidthCenter()
{
	m_windowLevelFilter->setDICOMWidget(this);
	m_windowLevelFilter->setWindowWidthCenter(m_windowWidth, m_windowCenter);
}

//-----------------------------------------------------------------------------
void asclepios::gui::vtkWidgetDICOM::setPALETTECOLORWindowWidthCenter()
{
	auto* const input = GetInputAlgorithm()->GetOutputPort();
	vtkNew<vtkDICOMApplyPalette> palette;
	palette->SetInputConnection(input);
	palette->Update();
	SetInputData(palette->GetOutput());
	GetWindowLevel()->SetOutputFormatToRGB();
}

//-----------------------------------------------------------------------------
vtkSmartPointer<vtkImageMapToWindowLevelColors> asclepios::gui::vtkWidgetDICOM::createMapColors() const
{
	auto mapColors = vtkSmartPointer<vtkImageMapToWindowLevelColors>::New();
	mapColors->SetInputData(m_reader->GetOutput(1));
	mapColors->SetLevel(0);
	mapColors->SetWindow(0);
	mapColors->Update();
	return mapColors;
}
