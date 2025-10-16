#include "image.h"
#include "smartdjdecoderregistration.h"

#include <vtkSetGet.h>
#include <vtkPointData.h>
#include <vtkImageData.h>
#include <QString>
#include <QLoggingCategory>

Q_LOGGING_CATEGORY(lcImage, "asclepios.core.image")

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
                return m_imageReader;
        }

        if (m_path.empty())
        {
                vtkGenericWarningMacro(<< "[Image] getImageReader() called without a valid path.");
                return nullptr;
        }

        m_imageReader = vtkSmartPointer<vtkDICOMReader>::New();
        m_imageReader->SetFileName(m_path.c_str());

        CodecRegistrationGuard guard;
        m_imageReader->Update();

        const auto* const metaData = m_imageReader->GetMetaData();
        auto* const output = m_imageReader->GetOutput();
        auto* const pointData = output ? output->GetPointData() : nullptr;
        auto* const scalars = pointData ? pointData->GetScalars() : nullptr;
        if (!metaData || !scalars)
        {
                qCWarning(lcImage)
                        << "vtkDICOMReader produced incomplete output for"
                        << QString::fromStdString(m_path)
                        << "(metadata or pixel data missing)";
        }
        else
        {
                int dimensions[3] = { 0, 0, 0 };
                output->GetDimensions(dimensions);
                qCInfo(lcImage)
                        << "vtkDICOMReader initialized for"
                        << QString::fromStdString(m_path)
                        << "dimensions:" << dimensions[0] << "x"
                        << dimensions[1] << "x" << dimensions[2];
        }

        return m_imageReader;
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
