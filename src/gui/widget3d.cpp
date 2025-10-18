#include "widget3d.h"
#include "tabwidget.h"
#include <vtkRendererCollection.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <QElapsedTimer>
#include <QKeyEvent>
#include <QLoggingCategory>
#include <QMessageBox>
#include <QString>
#include <QtConcurrent/qtconcurrentrun.h>

Q_LOGGING_CATEGORY(lcWidget3D, "asclepios.gui.widget3d")

asclepios::gui::Widget3D::Widget3D(QWidget* parent)
	: WidgetBase(parent)
{
	initData();
	initView();
	createConnections();
	m_tabWidget = parent;
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::render()
{
        qCInfo(lcWidget3D) << "render() requested" << "patientIdx" << m_patientIndex
                           << "studyIdx" << m_studyIndex << "seriesIdx" << m_seriesIndex
                           << "imageIdx" << m_imageIndex << "hasImage" << static_cast<bool>(m_image)
                           << "hasSeries" << static_cast<bool>(m_series);
        if (!m_image)
        {
                qCWarning(lcWidget3D) << "render() aborted: missing image for seriesIdx" << m_seriesIndex;
                throw std::runtime_error("No image for widget 3d!");
        }
        try
        {
                m_toolbar->getUI().toolButtonCrop->setVisible(false);
                m_toolbar->getUI().comboBoxFilters->setVisible(false);
                startLoadingAnimation();
                m_vtkWidget->setImage(m_image);
                m_vtkWidget->setSeries(m_series);
                m_vtkWidget->setInteractor(m_qtvtkWidget->GetInteractor());
                m_renderTimer.start();
                m_future = QtConcurrent::run(onRenderAsync, this);
                qCInfo(lcWidget3D) << "render() async task started" << "isRunning" << m_future.isRunning();
                Q_UNUSED(connect(this, &Widget3D::finishedRenderAsync,
                        this, &Widget3D::onFinishedRenderAsync));
        }
        catch (const std::exception& ex)
        {
                qCCritical(lcWidget3D) << "render() failed" << ex.what();
        }
}

//-----------------------------------------------------------------------------
bool asclepios::gui::Widget3D::eventFilter(QObject* watched, QEvent* event)
{
	if (event->type() == QEvent::KeyPress)
	{
		auto* const keyEvent = dynamic_cast<QKeyEvent*>(event);
		const int key = keyEvent->key();
		auto* const combo = m_toolbar->getUI().comboBoxFilters;
		switch (key)
		{
		case Qt::Key_Left:
		{
			const int currentIndex = combo->currentIndex();
			combo->setCurrentIndex(!combo->currentIndex()
				? combo->count() - 1
				: currentIndex - 1);
			break;
		}
		case Qt::Key_Right:
		{
			const int currentIndex = combo->currentIndex();
			combo->setCurrentIndex(currentIndex == combo->count() - 1
				? 0
				: currentIndex + 1);
			break;
		}
		default:
			break;
		}
	}
	return QWidget::eventFilter(watched, event);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::onfilterChanged(const QString& t_filter) const
{
        if (m_qtvtkWidget && m_vtkWidget)
        {
                const auto seriesUid = m_series ? QString::fromStdString(m_series->getUID()) : QStringLiteral("n/a");
                qCInfo(lcWidget3D) << "Filter change requested" << t_filter
                                   << "seriesUid" << seriesUid << "imageIdx" << m_imageIndex;
                m_vtkWidget->setFilter(t_filter);
                m_qtvtkWidget->GetRenderWindow()->Render();
                qCDebug(lcWidget3D) << "Filter applied" << t_filter;
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::onCropPressed(const bool& t_pressed) const
{
        qCInfo(lcWidget3D) << "Crop widget toggled" << (t_pressed ? "enabled" : "disabled")
                           << "seriesIdx" << m_seriesIndex << "imageIdx" << m_imageIndex;
        m_vtkWidget->activateBoxWidget(t_pressed);
        m_qtvtkWidget->GetRenderWindow()->Render();
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::onActivateWidget(const bool& t_flag)
{
	if (t_flag)
	{
		auto* event = new QFocusEvent(QEvent::FocusIn,
			Qt::FocusReason::MouseFocusReason);
		focusInEvent(event);
		delete event;
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::onSetMaximized() const
{
	if (m_tabWidget)
	{
		dynamic_cast<TabWidget*>
			(m_tabWidget)->onMaximize();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::onFinishedRenderAsync()
{
        disconnect(this, &Widget3D::finishedRenderAsync,
                this, &Widget3D::onFinishedRenderAsync);
        stopLoadingAnimation();

        if (!m_vtkWidget->hasRenderableVolume())
        {
                const QString error = m_vtkWidget->lastVolumeError();
                qCWarning(lcWidget3D) << "Volume rendering unavailable." << error;
                if (!error.isEmpty())
                {
                        QMessageBox::warning(this, tr("Volume Rendering"), error);
                }
                else
                {
                        QMessageBox::warning(this, tr("Volume Rendering"), tr("Unable to decode a 3D volume for the selected dataset."));
                }
                return;
        }

        auto* const renderWindow = m_qtvtkWidget->GetRenderWindow();
        renderWindow->Render();
        onfilterChanged(m_toolbar->getUI().comboBoxFilters->itemData(0).toString());
        m_toolbar->getUI().toolButtonCrop->setVisible(true);
        m_toolbar->getUI().comboBoxFilters->setVisible(true);
        installEventFilter(this);
        if (m_renderTimer.isValid())
        {
                qCInfo(lcWidget3D)
                        << "[Telemetry] Volume composition finished"
                        << "elapsedMs" << m_renderTimer.elapsed();
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::onRenderAsync(Widget3D* t_self)
{
        QElapsedTimer timer;
        timer.start();
        t_self->m_vtkWidget->render();
        qCInfo(lcWidget3D) << "vtkWidget3D::render completed" << "seriesIdx" << t_self->m_seriesIndex
                           << "imageIdx" << t_self->m_imageIndex << "durationMs" << timer.elapsed();
        emit t_self->finishedRenderAsync();
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::initView()
{
	m_ui.setupUi(this);
	setAttribute(Qt::WA_DeleteOnClose);
	auto* const layout = new QVBoxLayout(this);
	layout->setSpacing(0);
	layout->setMargin(0);
	layout->addWidget(m_toolbar);
	layout->addWidget(m_qtvtkWidget);
	setLayout(layout);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::initData()
{
	m_qtvtkWidget = new QVTKOpenGLNativeWidget(this);
	m_qtvtkWidget->SetRenderWindow(vtkNew<vtkGenericOpenGLRenderWindow>());
	m_qtvtkWidget->GetRenderWindow()->SetDoubleBuffer(true);
	m_vtkWidget = std::make_unique<vtkWidget3D>();
	m_vtkWidget->setRenderWindow(m_qtvtkWidget->GetRenderWindow());
	m_toolbar = new ToolbarWidget3D(this);
	m_vtkEvents = std::make_unique<vtkEventFilter>(this);
	setWidgetType(WidgetType::widget3d);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::createConnections()
{
	if (m_toolbar)
	{
		Q_UNUSED(connect(m_toolbar,
			&ToolbarWidget3D::filterChanged, this,
			&Widget3D::onfilterChanged));
		Q_UNUSED(connect(m_toolbar, &ToolbarWidget3D::cropPressed,
			this, &Widget3D::onCropPressed));
	}
	setFocusPolicy(Qt::FocusPolicy::WheelFocus);
	m_qtvtkWidget->installEventFilter(m_vtkEvents.get());
	Q_UNUSED(connect(m_vtkEvents.get(),
		&vtkEventFilter::activateWidget,
		this, &Widget3D::onActivateWidget));
	Q_UNUSED(connect(m_vtkEvents.get(),
		&vtkEventFilter::setMaximized,
		this, &Widget3D::onSetMaximized));
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget3D::startLoadingAnimation()
{
        m_loadingAnimation = std::make_unique<LoadingAnimation>(this);
        m_loadingAnimation->setWindowFlags(Qt::FramelessWindowHint | Qt::Dialog | Qt::BypassWindowManagerHint);
        m_loadingAnimation->setModal(false);
        m_loadingAnimation->setAttribute(Qt::WA_TranslucentBackground, true);
        m_loadingAnimation->setAttribute(Qt::WA_TransparentForMouseEvents, true);
        m_loadingAnimation->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        const QSize desiredSize(140, 140);
        m_loadingAnimation->setFixedSize(desiredSize);
        positionLoadingAnimation();
        m_loadingAnimation->show();
        m_loadingAnimation->raise();
}

void asclepios::gui::Widget3D::positionLoadingAnimation()
{
        if (!m_loadingAnimation)
        {
                return;
        }

        const QRect targetRect = (m_qtvtkWidget && !m_qtvtkWidget->geometry().isEmpty())
                ? m_qtvtkWidget->geometry()
                : rect();
        const QSize overlaySize = m_loadingAnimation->size();
        const QPoint topLeft = targetRect.center() - QPoint(overlaySize.width() / 2, overlaySize.height() / 2);
        m_loadingAnimation->move(topLeft);
}

void asclepios::gui::Widget3D::resizeEvent(QResizeEvent* event)
{
        QWidget::resizeEvent(event);
        positionLoadingAnimation();
}
