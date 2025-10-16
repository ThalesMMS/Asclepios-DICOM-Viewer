#include "corecontroller.h"
#include <QDebug>
#include <QFileInfo>
#include <QLoggingCategory>
#include <QString>
#include <stdexcept>

namespace asclepios::core
{
        Q_LOGGING_CATEGORY(lcCoreController, "asclepios.core.controller")
}

namespace
{
        QString sanitizePath(const std::string& path)
        {
                const QFileInfo fileInfo(QString::fromStdString(path));
                return fileInfo.fileName().isEmpty() ? fileInfo.filePath() : fileInfo.fileName();
        }
}

asclepios::core::CoreController::CoreController()
{
        initData();
}

//-----------------------------------------------------------------------------
void asclepios::core::CoreController::readData(const std::string& t_filepath) const
{
        const auto sanitizedPath = sanitizePath(t_filepath);
        qInfo(lcCoreController) << "[Logging] Request to read data from" << sanitizedPath;
        try
        {
                m_dicomReader->readFile(t_filepath);
                if (m_dicomReader->dataSetExists())
                {
                        qInfo(lcCoreController) << "[Logging] Dataset available for" << sanitizedPath;
                        insertDataInRepo();
                }
                else
                {
                        qWarning(lcCoreController) << "[Logging] Dataset missing for" << sanitizedPath;
                        throw std::runtime_error("File not supported");
                }
        }
        catch (const std::exception& ex)
        {
                qCritical(lcCoreController) << "[Logging] Exception while reading data from"
                                           << sanitizedPath << ":" << ex.what();
                throw;
        }
}

//-----------------------------------------------------------------------------
int asclepios::core::CoreController::getLastSeriesSize() const
{
	auto* const image = m_coreRepository->getLastImage();
	return image->getIsMultiFrame()
		? image->getNumberOfFrames()
		: static_cast<int>(m_coreRepository->
			getLastSeries()->getSinlgeFrameImages().size());
}

//-----------------------------------------------------------------------------
void asclepios::core::CoreController::resetData()
{
	m_coreRepository = std::make_unique<CoreRepository>();
	m_dicomReader = std::make_unique<DicomReader>();
}

//-----------------------------------------------------------------------------
void asclepios::core::CoreController::initData()
{
	m_coreRepository = std::make_unique<CoreRepository>();
	m_dicomReader = std::make_unique<DicomReader>();
}

//-----------------------------------------------------------------------------
void asclepios::core::CoreController::insertDataInRepo() const
{
	m_coreRepository->resetLastPatientData();
        m_coreRepository->addPatient(m_dicomReader->getReadPatient());
        m_coreRepository->addStudy(m_dicomReader->getReadStudy());
        m_coreRepository->addSeries(m_dicomReader->getReadSeries());
        if(m_coreRepository->getLastSeries())
        {
                m_coreRepository->addImage(m_dicomReader->getReadImage());
                const auto* const lastImage = m_coreRepository->getLastImage();
                auto* const lastSeries = m_coreRepository->getLastSeries();
                const auto frameCount = lastImage && lastImage->getIsMultiFrame()
                        ? lastImage->getNumberOfFrames()
                        : static_cast<int>(lastSeries->getSinlgeFrameImages().size());
                qInfo(lcCoreController) << "[Logging] Repository updated with" << frameCount
                                       << (lastImage && lastImage->getIsMultiFrame()
                                           ? "frames from multi-frame image"
                                           : "single-frame images");
        }
}
