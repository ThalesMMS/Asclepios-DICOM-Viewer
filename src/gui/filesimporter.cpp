#include "filesimporter.h"
#include <QApplication>
#include <QDebug>
#include <QtConcurrent/QtConcurrent>
#include <QMutexLocker>

void asclepios::gui::FilesImporter::startImporter()
{
	qInfo() << "[FilesImporter] Starting importer thread";
	{
		QMutexLocker locker(&m_filesMutex);
		m_isWorking = true;
	}
	m_filesCondition.wakeAll();
	if (!isRunning())
	{
		start();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::stopImporter(const QString& reason)
{
	const QString context = reason.isEmpty()
		? QStringLiteral("generic request")
		: reason;
	qInfo() << "[FilesImporter] Stop requested (" << context << ")";
	m_futureFolders.waitForFinished();
	{
		QMutexLocker locker(&m_filesMutex);
		m_isWorking = false;
	}
	m_filesCondition.wakeAll();
	wait();
	{
		QMutexLocker filesLocker(&m_filesMutex);
		m_filesPaths.clear();
	}
	{
		QMutexLocker foldersLocker(&m_foldersMutex);
		m_foldersPaths.clear();
	}
	qInfo() << "[FilesImporter] Importer stopped. Queues cleared.";
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::addFiles(const QStringList& t_paths)
{
	QApplication::setOverrideCursor(Qt::WaitCursor);
	{
		QMutexLocker locker(&m_filesMutex);
		for (const auto& path : t_paths)
		{
			qInfo() << "[FilesImporter] Queueing file" << path;
			m_filesPaths.push_back(path);
		}
	}
	m_filesCondition.wakeAll();
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
	m_filesCondition.wakeAll();
}

//-----------------------------------------------------------------------------
void asclepios::gui::FilesImporter::parseFolders(FilesImporter* t_self)
{
	while (true)
	{
		QString folderPath;
		{
			QMutexLocker folderLocker(&t_self->m_foldersMutex);
			if (t_self->m_foldersPaths.isEmpty())
			{
				break;
			}
			folderPath = t_self->m_foldersPaths.front();
			t_self->m_foldersPaths.pop_front();
		}

		qInfo() << "[FilesImporter] Parsing folder" << folderPath;
		QStringList discoveredFiles;
		for (QDirIterator it(folderPath, QDir::Files, QDirIterator::Subdirectories);
			it.hasNext();)
		{
			discoveredFiles.push_back(it.next());
		}

		if (!discoveredFiles.isEmpty())
		{
			QMutexLocker filesLocker(&t_self->m_filesMutex);
			for (const auto& filePath : discoveredFiles)
			{
				t_self->m_filesPaths.push_back(filePath);
			}
		}
		t_self->m_filesCondition.wakeAll();
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
	while (true)
	{
		QString nextFile;
		{
			QMutexLocker locker(&m_filesMutex);
			while (m_filesPaths.empty() && m_isWorking)
			{
				m_filesCondition.wait(&m_filesMutex);
			}
			if (!m_isWorking)
			{
				return;
			}
			nextFile = m_filesPaths.front();
			m_filesPaths.pop_front();
		}
		importFile(nextFile);
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
void asclepios::gui::FilesImporter::importFile(const QString& t_path)
{
	m_coreController->readData(t_path.toStdString());
	qInfo() << "[FilesImporter] Processed file" << t_path;
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
}
