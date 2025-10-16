#include "filesimporter.h"
#include <QApplication>
#include <QDebug>
#include <QtConcurrent/QtConcurrent>

void asclepios::gui::FilesImporter::startImporter()
{
	qInfo() << "[FilesImporter] Starting importer thread";
	m_isWorking = true;
	start();
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::stopImporter()
{
	qInfo() << "[FilesImporter] Stop requested";
	m_futureFolders.waitForFinished();
	m_isWorking = false;
	quit();
	wait();
	m_filesPaths.clear();
	m_foldersPaths.clear();
	qInfo() << "[FilesImporter] Importer stopped. Queues cleared.";
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::addFiles(const QStringList& t_paths)
{
	QApplication::setOverrideCursor(Qt::WaitCursor);
	for (const auto& path : t_paths)
	{
		qInfo() << "[FilesImporter] Queueing file" << path;
		m_filesMutex.lock();
		m_filesPaths.push_back(path);
		m_filesMutex.unlock();
	}
	QApplication::restoreOverrideCursor();
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::addFolders(const QStringList& t_paths)
{
	QApplication::setOverrideCursor(Qt::WaitCursor);
	m_foldersMutex.lock();
	m_foldersPaths.append(t_paths);
	m_foldersMutex.unlock();
	qInfo() << "[FilesImporter] Queueing folders" << t_paths;
	m_futureFolders.waitForFinished();
	m_futureFolders = QtConcurrent::run(parseFolders, this);
	Q_UNUSED(connect(&m_futureWatcherFolders,
		&QFutureWatcher<void>::finished, this,
		&FilesImporter::parseFoldersFinished));
	m_futureWatcherFolders.setFuture(m_futureFolders);
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::parseFolders(FilesImporter* t_self)
{
	while (!t_self->m_foldersPaths.isEmpty())
	{
		t_self->m_foldersMutex.lock();
		QString folderPath = t_self->m_foldersPaths.front();
		QDirIterator it(folderPath, QDir::Files,
		                QDirIterator::Subdirectories);
		t_self->m_foldersMutex.unlock();
		qInfo() << "[FilesImporter] Parsing folder" << folderPath;
		while (it.hasNext())
		{
			it.next();
			t_self->m_filesMutex.lock();
			t_self->m_filesPaths.push_back(it.filePath());
			t_self->m_filesMutex.unlock();
		}
		t_self->m_foldersMutex.lock();
		t_self->m_foldersPaths.pop_front();
		t_self->m_foldersMutex.unlock();
		qInfo() << "[FilesImporter] Finished folder" << folderPath;
	}
}

//-----------------------------------------------------------------------------
bool asclepios::gui::FilesImporter::newSeries() const
{
	const auto seriesAdded = m_coreController->newSeriesAdded();
	const auto imageAdded = m_coreController->newImageAdded();
	const auto lastImage = m_coreController->getLastImage();
	const auto isMultiFrame = lastImage && lastImage->getIsMultiFrame();
	const auto result = seriesAdded || (imageAdded && isMultiFrame);
	qInfo() << "[FilesImporter] newSeries check -> seriesAdded:" << seriesAdded
		<< "imageAdded:" << imageAdded << "multiFrame:" << isMultiFrame
		<< "result:" << result;
	return result;
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::run()
{
	while (m_isWorking)
	{
		importFiles();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::parseFoldersFinished() const
{
	disconnect(&m_futureWatcherFolders,
		&QFutureWatcher<void>::finished, this,
		&FilesImporter::parseFoldersFinished);
	QApplication::restoreOverrideCursor();
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::importFiles()
{
	while (!m_filesPaths.empty() && m_isWorking)
	{
		m_filesMutex.lock();
		m_coreController->
			readData(m_filesPaths.front().toStdString());
		qInfo() << "[FilesImporter] Processed file" << m_filesPaths.front();
		if (newSeries())
		{
			qInfo() << "[FilesImporter] Emitting populate signals "
				<< "Patient index:" << m_coreController->getLastPatientIndex()
				<< "Study index:" << m_coreController->getLastStudyIndex()
				<< "Series index:" << m_coreController->getLastSeriesIndex()
				<< "Image index:" << m_coreController->getLastImageIndex();
			emit addNewThumbnail(m_coreController->getLastPatient(),
				m_coreController->getLastStudy(),
				m_coreController->getLastSeries(),
				m_coreController->getLastImage());
			emit populateWidget(m_coreController->getLastSeries(),
				m_coreController->getLastImage());
			emit showThumbnailsWidget(true);
		}
		auto* const lastImage = m_coreController->getLastImage();
		if(lastImage && !lastImage->getIsMultiFrame())
		{
			emit refreshScrollValues(m_coreController->getLastSeries(),
				m_coreController->getLastImage());
		}
		m_filesPaths.pop_front();
		m_filesMutex.unlock();
	}
}
