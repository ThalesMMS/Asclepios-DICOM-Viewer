#pragma once

#include <memory>
#include <QLoggingCategory>
#include "corerepository.h"
#include "utils.h"
#include "dicomreader.h"

namespace asclepios::core
{
        Q_DECLARE_LOGGING_CATEGORY(lcCoreController)

        class export CoreController
        {
	public:
		CoreController();
		~CoreController() = default;

		void readData(const std::string& t_filepath) const;
		[[nodiscard]] std::vector<std::unique_ptr<Patient>>& getPatients() const { return m_coreRepository->getPatients(); }
		[[nodiscard]] Patient* getLastPatient() const { return m_coreRepository ? m_coreRepository->getLastPatient() : nullptr; }
		[[nodiscard]] int getLastPatientIndex() const { return m_coreRepository && m_coreRepository->getLastPatient() ? m_coreRepository->getLastPatient()->getIndex() : -1; }
		[[nodiscard]] Study* getLastStudy() const { return m_coreRepository ? m_coreRepository->getLastStudy() : nullptr; }
		[[nodiscard]] int getLastStudyIndex() const { return m_coreRepository && m_coreRepository->getLastStudy() ? m_coreRepository->getLastStudy()->getIndex() : -1; }
		[[nodiscard]] Series* getLastSeries() const { return m_coreRepository ? m_coreRepository->getLastSeries() : nullptr; }
		[[nodiscard]] int getLastSeriesSize() const;
		[[nodiscard]] int getLastSeriesIndex() const { return m_coreRepository && m_coreRepository->getLastSeries() ? m_coreRepository->getLastSeries()->getIndex() : -1; }
		[[nodiscard]] Image* getLastImage()  const { return m_coreRepository ? m_coreRepository->getLastImage() : nullptr; }
		[[nodiscard]] int getLastImageIndex() const { return m_coreRepository && m_coreRepository->getLastImage() ? m_coreRepository->getLastImage()->getIndex() : -1; }
		[[nodiscard]] bool newSeriesAdded() const { return m_coreRepository && m_coreRepository->newSeriesAdded(); }
		[[nodiscard]] bool newImageAdded() const { return m_coreRepository && m_coreRepository->newImageAdded(); }

		void resetData();

private:
		std::unique_ptr<CoreRepository> m_coreRepository = std::make_unique<CoreRepository>();
		std::unique_ptr<DicomReader> m_dicomReader = std::make_unique<DicomReader>();

		void initData();
		void insertDataInRepo() const;
	};
}
