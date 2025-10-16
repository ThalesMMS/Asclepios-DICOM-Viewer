#include "image.h"
#include "smartdjdecoderregistration.h"

#include <vtkSetGet.h>
#include <vtkPointData.h>

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

vtkSmartPointer<vtkDICOMReader> asclepios::core::Image::getImageReader() const
{
        if (m_imageReader)
        {
                return vtkSmartPointer<vtkDICOMReader>(m_imageReader);
        }

        vtkNew<vtkDICOMReader> localReader;
        localReader->SetFileName(m_path.c_str());

        CodecRegistrationGuard guard;
        localReader->Update();

        const auto* const metaData = localReader->GetMetaData();
        const auto* const output = localReader->GetOutput();
        const auto* const pointData = output ? output->GetPointData() : nullptr;
        const auto* const scalars = pointData ? pointData->GetScalars() : nullptr;
        if (!metaData || !scalars)
        {
                vtkGenericWarningMacro(<< "[Image] vtkDICOMReader produced incomplete output for " << m_path
                                       << " (metadata or pixel data missing)");
        }

        return localReader;
}

//-----------------------------------------------------------------------------
bool asclepios::core::Image::equal(Image* t_image) const
{
	return getParentObject() == t_image->getParentObject() &&
		getImagePath() == t_image->getImagePath() &&
		getSOPInstanceUID() == t_image->getSOPInstanceUID() &&
		getClassUID() == t_image->getClassUID() &&
		getFrameOfRefernceID() == t_image->getFrameOfRefernceID() &&
		getModality() == t_image->getModality() &&
		getWindowCenter() == t_image->getWindowCenter() &&
		getWindowWidth() == t_image->getWindowWidth() &&
		getRows() == t_image->getRows() &&
		getColumns() == t_image->getColumns() &&
		getNumberOfFrames() == t_image->getNumberOfFrames() &&
		getSliceLocation() == t_image->getSliceLocation() &&
		getAcquisitionNumber() == t_image->getAcquisitionNumber() &&
		getIsMultiFrame() == t_image->getIsMultiFrame();
}

//-----------------------------------------------------------------------------
bool asclepios::core::Image::isLess(Image* t_lhs, Image* t_rhs)
{
	if(t_lhs->getInstanceNumber() == t_rhs->getInstanceNumber())
	{
		return t_lhs->getSliceLocation() < t_rhs->getSliceLocation();
	}
	return t_lhs->getInstanceNumber() < t_rhs->getInstanceNumber();
}
