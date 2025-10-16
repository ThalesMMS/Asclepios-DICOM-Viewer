//#include <vld.h>
#include <vtkAutoInit.h>
#include <QDateTime>
#include <QDebug>
#include <QDir>
#include <QFile>
#include <QCoreApplication>
#include <QSurfaceFormat>
#include <QVTKOpenGLNativeWidget.h>
#include <QStandardPaths>
#include <QMutex>
#include <QMutexLocker>
#include <QTextStream>
#include "gui.h"
#include "guiframe.h"

VTK_MODULE_INIT(vtkRenderingOpenGL2);
VTK_MODULE_INIT(vtkInteractionStyle);
VTK_MODULE_INIT(vtkRenderingFreeType);
VTK_MODULE_INIT(vtkRenderingVolumeOpenGL2);

namespace
{
QFile g_logFile;
QMutex g_logMutex;

QString logTypeToString(QtMsgType type)
{
	switch (type)
	{
	case QtDebugMsg: return "DEBUG";
	case QtInfoMsg: return "INFO";
	case QtWarningMsg: return "WARN";
	case QtCriticalMsg: return "CRITICAL";
	case QtFatalMsg: return "FATAL";
	default: return "UNKNOWN";
	}
}

void messageHandler(QtMsgType type, const QMessageLogContext& context, const QString& message)
{
	QMutexLocker locker(&g_logMutex);

	if (!g_logFile.isOpen())
	{
		return;
	}

	QTextStream stream(&g_logFile);
	stream << QDateTime::currentDateTime().toString(Qt::ISODateWithMs) << " ["
	       << logTypeToString(type) << "] ";

	if (context.function && *context.function)
	{
		stream << context.function << " - ";
	}

	stream << message << '\n';
	stream.flush();

	if (type == QtFatalMsg)
	{
		abort();
	}
}

void setupLogging()
{
	const auto logDirPath = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
	qDebug() << "[Logging] AppDataLocation resolved to" << logDirPath;
	if (logDirPath.isEmpty())
	{
		qWarning() << "[Logging] AppDataLocation is empty; logging disabled.";
		return;
	}

	QDir logDir(logDirPath);
	if (!logDir.exists() && !logDir.mkpath("."))
	{
		qWarning() << "[Logging] Failed to create log directory" << logDirPath;
		return;
	}

	g_logFile.setFileName(logDir.filePath("viewer.log"));
	if (!g_logFile.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text))
	{
		qWarning() << "[Logging] Could not open log file at" << g_logFile.fileName();
		return;
	}

	qInstallMessageHandler(messageHandler);
	qInfo() << "[Logging] Initialized. File:" << g_logFile.fileName();
}
} // namespace

int main(int argc, char* argv[])
{
	QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
        QSurfaceFormat::setDefaultFormat(QVTKOpenGLNativeWidget::defaultFormat());
	QApplication application(argc, argv);
	QCoreApplication::setOrganizationName("Asclepios");
	QCoreApplication::setOrganizationDomain("asclepios.local");
	QCoreApplication::setApplicationName("Asclepios-DICOM-Viewer");
	setupLogging();
	vtkObject::GlobalWarningDisplayOff();
	application.setWindowIcon(QIcon(iconapp));
	asclepios::gui::GUIFrame guiFrame;
	asclepios::gui::GUI gui;
	guiFrame.setContent(&gui);
	guiFrame.showMaximized();
	return application.exec();
}
