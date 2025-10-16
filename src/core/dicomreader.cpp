#include "dicomreader.h"
#include <dcmtk/dcmdata/dcdeftag.h>
#include <dcmtk/dcmimgle/dcmimage.h>
#include <QDebug>
#include <QFileInfo>
#include <QLoggingCategory>
#include <QString>

namespace asclepios::core
{
        Q_LOGGING_CATEGORY(lcDicomReader, "asclepios.core.dicom")
}

namespace
{
        QString formatTagKey(const DcmTagKey& tagKey)
        {
                return QStringLiteral("(%1,%2)")
                        .arg(tagKey.getGroup(), 4, 16, QLatin1Char('0'))
                        .arg(tagKey.getElement(), 4, 16, QLatin1Char('0'))
                        .toUpper();
        }

        QString sanitizePath(const std::string& path)
        {
                const QFileInfo fileInfo(QString::fromStdString(path));
                return fileInfo.fileName().isEmpty() ? fileInfo.filePath() : fileInfo.fileName();
        }
}

void asclepios::core::DicomReader::readFile(const std::string& t_filePath)
{
        m_filePath = t_filePath;
        m_file = std::make_unique<DcmFileFormat>();
        const auto sanitizedPath = sanitizePath(t_filePath);
        qInfo(lcDicomReader) << "[Logging] Starting DICOM read for" << sanitizedPath;
        if (m_file->loadFile(t_filePath.c_str()).bad())
        {
                qCritical(lcDicomReader) << "[Logging] Failed to load DICOM file" << sanitizedPath;
                m_file.reset();
                m_dataSet = nullptr;
                throw std::runtime_error("Cannot open file!");
        }
        m_dataSet = m_file->getDataset();
        if (m_dataSet == nullptr)
        {
                qWarning(lcDicomReader) << "[Logging] DICOM file has no metadata" << sanitizedPath;
                m_file.reset();
                throw std::runtime_error("Missing dataset metadata!");
        }
        qInfo(lcDicomReader) << "[Logging] Successfully loaded DICOM file" << sanitizedPath;
}

//-----------------------------------------------------------------------------
std::unique_ptr<asclepios::core::Patient> asclepios::core::DicomReader::getReadPatient() const
{
	auto tempPatient = std::make_unique<Patient>();
	const auto age = getTagFromDataSet(DCM_PatientAge);
	tempPatient->setAge(age.empty() ? 0 : std::stoi(age));
	tempPatient->setBirthDate(getTagFromDataSet(DCM_PatientBirthDate));
	tempPatient->setID(getTagFromDataSet(DCM_PatientID));
	tempPatient->setName(getTagFromDataSet(DCM_PatientName));
	return tempPatient;
}

//-----------------------------------------------------------------------------
std::unique_ptr<asclepios::core::Study> asclepios::core::DicomReader::getReadStudy() const
{
	auto tempStudy = std::make_unique<Study>();
	tempStudy->setID(getTagFromDataSet(DCM_StudyID));
	tempStudy->setDate(getTagFromDataSet(DCM_StudyDate));
	tempStudy->setDescription(getTagFromDataSet(DCM_StudyDescription));
	tempStudy->setUID(getTagFromDataSet(DCM_StudyInstanceUID));
	return tempStudy;
}

//-----------------------------------------------------------------------------
std::unique_ptr<asclepios::core::Series> asclepios::core::DicomReader::getReadSeries() const
{
        const auto modality = getTagFromDataSet(DCM_Modality);
        if (!isModalitySupported(modality))
        {
                qWarning(lcDicomReader) << "[Logging] Unsupported modality encountered in"
                                        << sanitizePath(m_filePath) << ":" << QString::fromStdString(modality);
                return nullptr;
        }
	auto tempSeries = std::make_unique<Series>();
	tempSeries->setUID(getTagFromDataSet(DCM_SeriesInstanceUID));
	tempSeries->setDate(getTagFromDataSet(DCM_SeriesDate));
	tempSeries->setDescription(getTagFromDataSet(DCM_SeriesDescription));
	const auto seriesNumber = getTagFromDataSet(DCM_SeriesNumber);
	tempSeries->setNumber(seriesNumber.empty() ? "0" : seriesNumber);
	return tempSeries;
}

//-----------------------------------------------------------------------------
std::unique_ptr<asclepios::core::Image> asclepios::core::DicomReader::getReadImage() const
{
	const auto modality = getTagFromDataSet(DCM_Modality);
	auto tempImage = std::make_unique<Image>();
	tempImage->setModality(modality);
	tempImage->setImagePath(m_filePath);
	tempImage->setSOPInstanceUID(getTagFromDataSet(DCM_SOPInstanceUID));
	tempImage->setClassUID(getTagFromDataSet(DCM_SOPClassUID));
	const auto [winndow, level] = getWindowLevel();
	tempImage->setWindowCenter(winndow);
	tempImage->setWindowWidth(level);
	const auto rows = getTagFromDataSet(DCM_Rows);
	tempImage->setRows(rows.empty() ? 0 : std::stoi(rows));
	const auto columns = getTagFromDataSet(DCM_Columns);
	tempImage->setColumns(columns.empty() ? 0 : std::stoi(columns));
	const auto sliceLocation = getTagFromDataSet(DCM_SliceLocation);
	tempImage->setSliceLocation(sliceLocation.empty() ? 0 : std::stod(sliceLocation));
	const auto acquisitionNumber = getTagFromDataSet(DCM_AcquisitionNumber);
	tempImage->setAcquisitionNumber(acquisitionNumber.empty() ? 0 : std::stoi(acquisitionNumber));
	const auto numberFrames = getTagFromDataSet(DCM_NumberOfFrames);
	tempImage->setNumberOfFrames(numberFrames.empty() ? 0 : std::stoi(numberFrames));
	tempImage->setIsMultiFrame(tempImage->getNumberOfFrames() > 0);
	if (!tempImage->getIsMultiFrame())
	{
		tempImage->setFrameOfRefernceID(getTagFromDataSet(DCM_FrameOfReferenceUID));
	}
	const auto [x, y] = getPixelSpacing();
	tempImage->setPixelSpacingX(x);
	tempImage->setPixelSpacingY(y);
	const auto instanceNumber = getTagFromDataSet(DCM_InstanceNumber);
	tempImage->setInstanceNumber(instanceNumber.empty() ? 0 : std::stoi(instanceNumber));
	return tempImage;
}

//-----------------------------------------------------------------------------
std::string asclepios::core::DicomReader::getTagFromDataSet(const DcmTagKey& tagKey) const
{
        try
        {
                OFString result;
                m_dataSet->findAndGetOFStringArray(tagKey, result);
                return result.c_str();
        }
        catch (std::exception& ex)
        {
                qWarning(lcDicomReader) << "[Logging] Exception while reading tag"
                                        << formatTagKey(tagKey) << ":" << ex.what();
                return {};
        }
}

//-----------------------------------------------------------------------------
bool asclepios::core::DicomReader::isModalitySupported(const std::string& t_modality)
{
	return t_modality != "PR" && t_modality != "KO" && t_modality != "SR";
}

//-----------------------------------------------------------------------------
std::tuple<int, int> asclepios::core::DicomReader::getWindowLevel() const
{
	const auto windowStr = getTagFromDataSet(DCM_WindowCenter);
	const auto levelStr = getTagFromDataSet(DCM_WindowWidth);
	auto window = windowStr.empty() ? 0 : std::stod(windowStr);
	auto level = levelStr.empty() ? 0 : std::stod(levelStr);
	if (window == 0.00 && level == 0.00)
	{
		auto const dicomImage =
			std::make_unique<DicomImage>
			(m_dataSet, m_dataSet->getCurrentXfer());
		double minValue = 0;
		double maxValue = 0;
		dicomImage->setWindow(0, 0);
		dicomImage->getMinMaxValues(minValue, maxValue);
		level = maxValue - minValue;
		window = minValue + level / 2;
	}
	return std::make_tuple(static_cast<int>(window),
	                       static_cast<int>(level));
}

//-----------------------------------------------------------------------------
std::tuple<double, double> asclepios::core::DicomReader::getPixelSpacing() const
{
        auto pixelSpacing = getTagFromDataSet(DCM_PixelSpacing);
        auto usedTag = DCM_PixelSpacing;
        if (pixelSpacing.empty())
        {
                pixelSpacing = getTagFromDataSet(DCM_ImagerPixelSpacing);
                usedTag = DCM_ImagerPixelSpacing;
        }
        if (!pixelSpacing.empty())
	{
		const auto separatorPosition = pixelSpacing.find('\\');
		const auto x =
			pixelSpacing.substr(0, pixelSpacing.find('\\'));
                try
                {
                        if (separatorPosition != pixelSpacing.length())
                        {
                                const auto y =
                                        pixelSpacing.substr(separatorPosition + 1, pixelSpacing.length());
                                return std::make_tuple(std::stod(x), std::stod(y));
                        }
                }
                catch (std::exception& ex)
                {
                        qWarning(lcDicomReader) << "[Logging] Exception while parsing pixel spacing for tag"
                                                << formatTagKey(usedTag) << ":" << ex.what();
                }
        }
        else
        {
                qWarning(lcDicomReader) << "[Logging] Missing pixel spacing metadata for tags"
                                        << formatTagKey(DCM_PixelSpacing) << "and"
                                        << formatTagKey(DCM_ImagerPixelSpacing);
        }
        return std::make_tuple(1, 1);
}
