#include "widgetmpr.h"
#include <QFocusEvent>
#include <QLoggingCategory>
#include <QMessageBox>
#include <vtkEventQtSlotConnect.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <QtConcurrent/qtconcurrentrun.h>
#include "tabwidget.h"

Q_LOGGING_CATEGORY(lcWidgetMpr, "asclepios.gui.widgetmpr")

asclepios::gui::WidgetMPR::WidgetMPR(QWidget* parent)
        : WidgetBase(parent)
{
	initData();
	initView();
	createConnections();
	m_tabWidget = parent;
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::render()
{
        if (!m_image)
        {
                qCWarning(lcWidgetMpr) << "Cannot render MPR widget without image.";
                return;
        }
        if (!m_widgetMPR)
        {
                qCCritical(lcWidgetMpr) << "Cannot render MPR widget without underlying vtkWidgetMPR instance.";
                return;
        }
        qCInfo(lcWidgetMpr) << "Starting render for" << (m_image->getIsMultiFrame() ? "multi-frame" : "single-frame")
                            << "dataset.";
        m_toolbar->getUI().toolButtonReslicer->setVisible(false);
        m_toolbar->getUI().toolButtonReset->setVisible(false);
        qCDebug(lcWidgetMpr) << "Hid reslice/reset actions while preparing render.";
        startLoadingAnimation();
        if (m_image->getIsMultiFrame())
        {
                qCDebug(lcWidgetMpr) << "Assigning multi-frame image to vtkWidgetMPR.";
                m_widgetMPR->setImage(m_image);
        }
        else
        {
                qCDebug(lcWidgetMpr) << "Assigning single-frame image and series to vtkWidgetMPR.";
                m_widgetMPR->setImage(m_image);
                if (!m_series)
                {
                        qCWarning(lcWidgetMpr) << "Single-frame render requested but series metadata is missing.";
                }
                m_widgetMPR->setSeries(m_series);
        }
        qCInfo(lcWidgetMpr) << "Launching asynchronous render task.";
        m_future = QtConcurrent::run(onRenderAsync, this);
        Q_UNUSED(connect(this, &WidgetMPR::finishedRenderAsync,
                this, &WidgetMPR::onFinishedRenderAsync));
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::onActivateResliceWidget(const bool& t_flag) const
{
	if (m_widgetMPR)
	{
		m_widgetMPR->setShowCursor(t_flag);
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::onResetResliceWidget() const
{
	if (m_widgetMPR)
	{
		m_widgetMPR->resetResliceWidget();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::onSetMaximized() const
{
	if (m_tabWidget)
	{
		dynamic_cast<TabWidget*>
			(m_tabWidget)->onMaximize();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::onActivateWidget(const bool& t_flag, QObject* t_object)
{
	for (const auto& widget : m_qtvtkWidgets)
	{
		if (widget == t_object)
		{
			m_widgetMPR->setActiveRenderWindow(widget->GetRenderWindow());
		}
	}
	if (t_flag)
	{
		auto* event = new QFocusEvent(QEvent::FocusIn,
			Qt::FocusReason::MouseFocusReason);
		focusInEvent(event);
		delete event;
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::onFinishedRenderAsync()
{
        qCInfo(lcWidgetMpr) << "Asynchronous render task completed.";
        disconnect(this, &WidgetMPR::finishedRenderAsync,
                this, &WidgetMPR::onFinishedRenderAsync);
        stopLoadingAnimation();

        if (!m_widgetMPR->hasValidVolume())
        {
                const QString error = m_widgetMPR->lastFailureMessage();
                qCWarning(lcWidgetMpr) << "MPR volume unavailable." << error;
                if (!error.isEmpty())
                {
                        QMessageBox::warning(this, tr("MPR Rendering"), error);
                }
                else
                {
                        QMessageBox::warning(this, tr("MPR Rendering"), tr("Unable to reconstruct multiplanar views for this dataset."));
                }
                return;
        }

        for (const auto& widget : m_qtvtkWidgets)
        {
                widget->setVisible(true);
                qCDebug(lcWidgetMpr) << "Widget" << widget << "is now visible:" << widget->isVisible();
        }
        m_widgetMPR->setRenderWindowsMPR(
                m_qtvtkWidgets[0]->GetRenderWindow(),
                m_qtvtkWidgets[1]->GetRenderWindow(),
                m_qtvtkWidgets[2]->GetRenderWindow());
        qCDebug(lcWidgetMpr) << "Render windows assigned to vtkWidgetMPR, triggering render.";
        m_widgetMPR->render();
        m_toolbar->getUI().toolButtonReslicer->setVisible(true);
        m_toolbar->getUI().toolButtonReset->setVisible(true);
        qCDebug(lcWidgetMpr) << "Reslice/reset actions restored visibility.";
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::initData()
{
	m_toolbar = new ToolbarWidgetMPR(this);
	for (auto i = 0; i < 3; ++i)
	{
		m_qtvtkWidgets[i] = new QVTKOpenGLNativeWidget(this);
		m_renderWindow[i] = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
		m_qtvtkWidgets[i]->SetRenderWindow(m_renderWindow[i]);
		m_qtvtkWidgets[i]->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
		m_qtvtkWidgets[i]->setVisible(false);
	}
	m_widgetMPR = std::make_unique<vtkWidgetMPR>();
	m_vtkEvents = std::make_unique<vtkEventFilter>(this);
	setWidgetType(WidgetType::widgetmpr);
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::initView()
{
	m_ui.setupUi(this);
	setAttribute(Qt::WA_DeleteOnClose);
	auto* const layout = new QVBoxLayout(this);
	layout->setMargin(2);
	layout->setSpacing(2);
	auto* const widgetsLayout = new QGridLayout(this);
	widgetsLayout->addWidget(m_qtvtkWidgets[0], 0, 0);
	widgetsLayout->addWidget(m_qtvtkWidgets[1], 1, 0);
	widgetsLayout->addWidget(m_qtvtkWidgets[2], 0, 1, 2, 1);
	widgetsLayout->setMargin(0);
	widgetsLayout->setSpacing(2);
	dynamic_cast<QVBoxLayout*>(this->layout())->addWidget(m_toolbar);
	dynamic_cast<QVBoxLayout*>(this->layout())->addLayout(widgetsLayout);
	setLayout(layout);
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::createConnections()
{
	if (m_toolbar)
	{
		Q_UNUSED(connect(m_toolbar,
			&ToolbarWidgetMPR::activateResliceWidget,
			this, &WidgetMPR::onActivateResliceWidget));
		Q_UNUSED(connect(m_toolbar,
			&ToolbarWidgetMPR::resetResliceWidget,
			this, &WidgetMPR::onResetResliceWidget));
	}
	setFocusPolicy(Qt::FocusPolicy::WheelFocus);
	for (const auto& widgets : m_qtvtkWidgets)
	{
		widgets->installEventFilter(m_vtkEvents.get());
	}
	Q_UNUSED(connect(m_vtkEvents.get(),
		&vtkEventFilter::activateWidget,
		this, &WidgetMPR::onActivateWidget));
	Q_UNUSED(connect(m_vtkEvents.get(),
		&vtkEventFilter::setMaximized,
		this, &WidgetMPR::onSetMaximized));
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::startLoadingAnimation()
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

void asclepios::gui::WidgetMPR::positionLoadingAnimation()
{
        if (!m_loadingAnimation)
        {
                return;
        }

        const QRect targetRect = rect();
        const QSize overlaySize = m_loadingAnimation->size();
        const QPoint topLeft = targetRect.center() - QPoint(overlaySize.width() / 2, overlaySize.height() / 2);
        const QPoint globalTopLeft = mapToGlobal(topLeft);
        m_loadingAnimation->move(globalTopLeft);
}

void asclepios::gui::WidgetMPR::resizeEvent(QResizeEvent* event)
{
        QWidget::resizeEvent(event);
        positionLoadingAnimation();
}
//-----------------------------------------------------------------------------
void asclepios::gui::WidgetMPR::onRenderAsync(WidgetMPR* t_self)
{
        if (t_self->m_widgetMPR)
        {
                qCInfo(lcWidgetMpr) << "Asynchronous task creating 3D matrix.";
                t_self->m_widgetMPR->create3DMatrix();
                qCInfo(lcWidgetMpr) << "3D matrix creation completed inside async task.";
                emit t_self->finishedRenderAsync();
        }
        else
        {
                qCWarning(lcWidgetMpr) << "Async render task invoked without vtkWidgetMPR instance.";
        }
}





