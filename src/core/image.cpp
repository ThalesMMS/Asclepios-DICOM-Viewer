#include "image.h"
#include "smartdjdecoderregistration.h"
#include "dicomvolume.h"

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

std::shared_ptr<asclepios::core::DicomVolume> asclepios::core::Image::getDicomVolume() const
{
        if (m_volume)
        {
                return m_volume;
        }

        if (m_path.empty())
        {
                qWarning(lcImage) << "getDicomVolume() called without a valid path.";
                return nullptr;
        }

        CodecRegistrationGuard guard;
        try
        {
                m_volume = DicomVolumeLoader::loadImage(m_path);
        }
        catch (const std::exception& ex)
        {
                qCCritical(lcImage)
                        << "DCMTK failed to load"
                        << QString::fromStdString(m_path)
                        << ":" << ex.what();
                m_volume.reset();
        }

        if (m_volume && m_volume->ImageData)
        {
                int dimensions[3] = {0, 0, 0};
                m_volume->ImageData->GetDimensions(dimensions);
                qCInfo(lcImage)
                        << "Loaded DICOM image"
                        << QString::fromStdString(m_path)
                        << "dimensions:" << dimensions[0] << "x"
                        << dimensions[1] << "x" << dimensions[2];
        }
        else
        {
                qCWarning(lcImage)
                        << "Unable to obtain image data for"
                        << QString::fromStdString(m_path);
        }

        return m_volume;
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
