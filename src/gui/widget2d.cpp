#include "widget2d.h"
#include <vtkGenericOpenGLRenderWindow.h>
#include <QFocusEvent>
#include <QLoggingCategory>
#include <QtConcurrent/QtConcurrent>
#include <QString>
#include <QSizePolicy>
#include "tabwidget.h"
#include "vtkwidget2dinteractorstyle.h"
#include "study.h"
#include "patient.h"

Q_LOGGING_CATEGORY(lcWidget2D, "asclepios.gui.widget2d")


asclepios::gui::Widget2D::Widget2D(QWidget* parent)
	: WidgetBase(parent)
{
	initData();
	initView();
	createConnections();
	m_tabWidget = parent;
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::initView()
{
        m_ui.setupUi(this);
        setLayout(new QHBoxLayout(this));
        layout()->setMargin(0);
        layout()->setSpacing(0);
        layout()->addWidget(m_qtvtkWidget);
        if (!m_errorLabel)
        {
                m_errorLabel = new QLabel(tr("Unable to render the selected image."), this);
                m_errorLabel->setAlignment(Qt::AlignCenter);
                m_errorLabel->setWordWrap(true);
                m_errorLabel->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
                m_errorLabel->setStyleSheet(QStringLiteral("color: #f44336; background-color: rgba(0, 0, 0, 180);"
                                                       "padding: 16px;"));
                m_errorLabel->hide();
        }
        layout()->addWidget(m_errorLabel);
        layout()->addWidget(m_scroll);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::initData()
{
	disconnectScroll();
	delete m_scroll;
	delete m_qtvtkWidget;
	m_scroll = new QScrollBar(Qt::Vertical, this);
	setScrollStyle();
	m_renderWindow[0] =
		vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
	m_vtkWidget = std::make_unique<vtkWidget2D>();
	m_qtvtkWidget = new QVTKOpenGLNativeWidget(this);
	m_qtvtkWidget->SetRenderWindow(m_renderWindow[0]);
	m_vtkWidget->setRenderWindow(m_qtvtkWidget->GetRenderWindow());
	m_vtkEvents = std::make_unique<vtkEventFilter>(this);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::render()
{
        if (m_qtvtkWidget && m_vtkWidget && m_renderWindow->Get())
        {
                if (!m_series || !m_image)
                {
                        qCWarning(lcWidget2D)
                                << "Render aborted due to missing series/image context.";
                        return;
                }

                try
                {
                        const auto expectedFrames = m_image->getIsMultiFrame()
                                ? m_image->getNumberOfFrames()
                                : static_cast<int>(m_series->getSinlgeFrameImages().size());
                        qCInfo(lcWidget2D)
                                << "Render requested. Multi-frame:" << m_image->getIsMultiFrame()
                                << "expected frames:" << expectedFrames
                                << "series UID:" << QString::fromStdString(m_series->getUID())
                                << "series index:" << m_series->getIndex()
                                << "image SOP UID:" << QString::fromStdString(m_image->getSOPInstanceUID())
                                << "image index:" << m_image->getIndex()
                                << "path:" << QString::fromStdString(m_image->getImagePath());

                        if(m_image->getIsMultiFrame())
                        {
                                startLoadingAnimation();
                                qCInfo(lcWidget2D) << "Loading animation started for multi-frame image.";
                        }
                        if (m_errorLabel)
                        {
                                m_errorLabel->hide();
                        }
                        if (m_qtvtkWidget)
                        {
                                m_qtvtkWidget->show();
                        }
                        dynamic_cast<TabWidget*>(m_tabWidget)->setTabTitle(0,
                                m_series->getDescription().c_str());
                        auto* const vtkWidget = dynamic_cast<vtkWidget2D*>(m_vtkWidget.get());
                        Q_UNUSED(connect(this, &Widget2D::imageReaderInitialized,
                                this, &Widget2D::onRenderFinished));
                        Q_UNUSED(connect(this, &Widget2D::imageReaderFailed,
                                this, &Widget2D::onRenderFailed));
                        vtkWidget->setSeries(m_series);
                        vtkWidget->setImage(m_image);
                        vtkWidget->resetOverlay();
                        m_tabWidget->setAcceptDrops(false);
                        qCInfo(lcWidget2D) << "Dispatching QtConcurrent::run for image reader initialization.";
                        m_future = QtConcurrent::run(initImageReader, vtkWidget, this);
                        qCInfo(lcWidget2D)
                                << "QtConcurrent::run dispatched. Running:" << m_future.isRunning();
                }
                catch (std::exception& ex)
                {
                        m_future = {};
                        qCCritical(lcWidget2D) << "Render failed due to exception:" << ex.what();
                        Q_EMIT imageReaderFailed(QString::fromUtf8(ex.what()));
                }
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::createConnections()
{
	setFocusPolicy(Qt::FocusPolicy::WheelFocus);
	m_qtvtkWidget->installEventFilter(m_vtkEvents.get());
	Q_UNUSED(connect(m_vtkEvents.get(),
		&vtkEventFilter::activateWidget,
		this, &Widget2D::onActivateWidget));
	Q_UNUSED(connect(m_vtkEvents.get(),
		&vtkEventFilter::setMaximized,
		this, &Widget2D::onSetMaximized));
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::resetView()
{
        resetWidgets();
        resetScroll();
        if (m_errorLabel)
        {
                m_errorLabel->hide();
        }
        if (m_qtvtkWidget)
        {
                m_qtvtkWidget->show();
        }
        m_isImageLoaded = false;
        m_image = nullptr;
        m_series = nullptr;
        //todo reset title of tab
        disconnectScroll();
        createConnections();
        qCInfo(lcWidget2D) << "View reset.";
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::setSliderValues(const int& t_min, const int& t_max, const int& t_value)
{
        if (m_scroll)
        {
                const QSignalBlocker blocker(m_scroll);
                m_scroll->setMinimum(t_min);
                m_scroll->setMaximum(t_max);
                m_scroll->setValue(t_value);
                qCDebug(lcWidget2D) << "Scroll slider configured. Min:" << t_min
                                    << "Max:" << t_max << "Value:" << t_value;
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onActivateWidget(const bool& t_flag)
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
void asclepios::gui::Widget2D::onApplyTransformation(const transformationType& t_type) const
{
	if (m_vtkWidget && m_image)
	{
		auto* widget2d =
			dynamic_cast<vtkWidget2D*>(m_vtkWidget.get());
		if (widget2d)
		{
			widget2d->applyTransformation(t_type);
		}
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onRefreshScrollValues(core::Series* t_series, core::Image* t_image)
{
        auto* const study = t_series->getParentObject();
        if (canScrollBeRefreshed(study->getParentObject()->getIndex(),
                study->getIndex(), t_series->getIndex()))
        {
                if (!m_image->getIsMultiFrame())
                {
                        const auto size = static_cast<int>(t_series->getSinlgeFrameImages().size());
                        const auto value =
                                (t_image->getIndex() <= m_scroll->value()
                                && size > 1 && t_image->getIndex() > 0)
                                ? m_scroll->value() + 1
                                : m_scroll->value();
                        setSliderValues(0, size - 1, value);
                        dynamic_cast<vtkWidget2D*>(m_vtkWidget.get())->updateOvelayImageNumber(0,
                                size,
                                std::stoi(m_series->getNumber()));
                        qCDebug(lcWidget2D)
                                << "Scroll values refreshed from importer. Series index:" << t_series->getIndex()
                                << "Image index:" << t_image->getIndex()
                                << "Current value:" << value;
                }
        }
}

void asclepios::gui::Widget2D::onChangeScrollValue(vtkObject* t_obj , unsigned long , void*, void*) const
{
	const QSignalBlocker blocker(m_scroll);
	auto* const  style =
		dynamic_cast<vtkWidget2DInteractorStyle*>(t_obj);
        if(style)
        {
                m_scroll->setValue(style->getCurrentImageIndex());
                qCDebug(lcWidget2D)
                        << "Scroll value updated from interactor style:" << style->getCurrentImageIndex();
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onSetMaximized() const
{
	if(m_tabWidget)
	{
		dynamic_cast<TabWidget*>(m_tabWidget)->onMaximize();
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onRenderFinished()
{
        qCInfo(lcWidget2D) << "Render finished successfully. Future finished:" << m_future.isFinished();
        m_vtkWidget->setInteractor(m_qtvtkWidget->
                GetRenderWindow()->GetInteractor());
        m_vtkWidget->render();
        auto const max = m_image->getIsMultiFrame()
                ? m_image->getNumberOfFrames() - 1
                : static_cast<int>(m_series->getSinlgeFrameImages().size()) - 1;
        m_scroll->setMaximum(max);
        dynamic_cast<vtkWidget2D*>(m_vtkWidget.get())
                ->updateOvelayImageNumber(0, max + 1,
                        std::stoi(m_series->getNumber()));
        connectScroll();
        m_scroll->setVisible(m_scroll->maximum());
        m_tabWidget->setAcceptDrops(true);
        m_future = {};
        disconnect(this, &Widget2D::imageReaderInitialized,
                   this, &Widget2D::onRenderFinished);
        disconnect(this, &Widget2D::imageReaderFailed,
                   this, &Widget2D::onRenderFailed);
        stopLoadingAnimation();
        if (m_errorLabel)
        {
                m_errorLabel->hide();
        }
        qCInfo(lcWidget2D) << "Scroll range configured:" << 0 << "-" << max;
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onRenderFailed(const QString& t_message)
{
        qCWarning(lcWidget2D)
                << "Render failed. Showing placeholder." << "Reason:" << t_message
                << "Future running:" << m_future.isRunning();
        stopLoadingAnimation();
        m_future = {};
        m_isImageLoaded = false;
        if (m_qtvtkWidget)
        {
                m_qtvtkWidget->hide();
        }
        if (m_scroll)
        {
                m_scroll->hide();
        }
        if (m_errorLabel)
        {
                const auto message = t_message.isEmpty()
                        ? tr("Unable to render the selected image.")
                        : tr("Unable to render the selected image.\n%1").arg(t_message);
                m_errorLabel->setText(message);
                m_errorLabel->show();
        }
        if (m_tabWidget)
        {
                m_tabWidget->setAcceptDrops(true);
        }
        disconnect(this, &Widget2D::imageReaderInitialized,
                   this, &Widget2D::onRenderFinished);
        disconnect(this, &Widget2D::imageReaderFailed,
                   this, &Widget2D::onRenderFailed);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::closeEvent(QCloseEvent* t_event)
{
	initView();
	initData();
	QWidget::closeEvent(t_event);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onChangeImage(int t_index)
{
        try
        {
                auto* interactorStyle =
			dynamic_cast<vtkWidget2DInteractorStyle*>(
				m_qtvtkWidget->GetRenderWindow()->
				GetInteractor()->GetInteractorStyle());
                if (interactorStyle)
                {
                        onActivateWidget(true);
                        interactorStyle->changeImage(t_index);
                        qCDebug(lcWidget2D) << "Scroll value changed by user to frame" << t_index;
                }
        }
        catch (const std::exception& ex)
        {
                qCWarning(lcWidget2D) << "Failed to change image:" << ex.what();
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::connectScroll()
{
	if (!m_scrollConnection)
	{
		m_scrollConnection = vtkSmartPointer<vtkEventQtSlotConnect>::New();
	}
	m_scrollConnection->Connect(
		m_qtvtkWidget->GetRenderWindow()->GetInteractor()->GetInteractorStyle(),
		changeScrollValue, this,
		SLOT(onChangeScrollValue(vtkObject*, unsigned long, void*, void*)));
	Q_UNUSED(connect(m_scroll, &QScrollBar::valueChanged,
		this, &Widget2D::onChangeImage));
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::startLoadingAnimation()
{
	m_loadingAnimation = std::make_unique<LoadingAnimation>(this);
	m_loadingAnimation->setWindowFlags(Qt::Widget);
	layout()->addWidget(m_loadingAnimation.get());
	m_loadingAnimation->show();
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::disconnectScroll() const
{
	if (m_scroll)
	{
		disconnect(m_scroll, &QScrollBar::valueChanged,
		           this, &Widget2D::onChangeImage);
	}
	if (m_scrollConnection)
	{
		m_scrollConnection->Disconnect(
			m_qtvtkWidget->GetRenderWindow()
			->GetInteractor()->GetInteractorStyle(),
			changeScrollValue,
			this, SLOT(onChangeScrollValue(vtkObject*, unsigned long, void*, void*)));
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::resetWidgets()
{
	if (m_vtkWidget)
	{
		m_vtkWidget.reset();
	}
	m_vtkWidget = std::make_unique<vtkWidget2D>();
	m_qtvtkWidget->SetRenderWindow(vtkNew<vtkGenericOpenGLRenderWindow>());
	m_renderWindow[0] = m_qtvtkWidget->GetRenderWindow();
	m_vtkWidget->setRenderWindow(m_renderWindow[0]);
	m_renderWindow[0]->Render();
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::resetScroll()
{
	if (m_scroll)
	{
		const QSignalBlocker blocker(m_scroll);
		m_scroll->setValue(0);
		m_scroll->setMaximum(0);
	}
	else
	{
		m_scroll = new QScrollBar(Qt::Vertical, this);
		setScrollStyle();
	}
}

void asclepios::gui::Widget2D::setScrollStyle() const
{
	m_scroll->hide();
	QFile file(scroll2DStyle);
	if (file.open(QFile::ReadOnly))
	{
		const QString styleSheet = QLatin1String(file.readAll());
		m_scroll->setStyleSheet(styleSheet);
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::initImageReader(vtkWidget2D* t_vtkWidget2D, Widget2D* t_self)
{
        qCInfo(lcWidget2D) << "Background initImageReader started.";
        try
        {
                t_vtkWidget2D->initImageReader();
                qCInfo(lcWidget2D) << "Background initImageReader completed successfully.";
                emit t_self->imageReaderInitialized();
        }
        catch (const std::exception& ex)
        {
                qCWarning(lcWidget2D)
                        << "Background initImageReader failed with exception:" << ex.what();
                emit t_self->imageReaderFailed(QString::fromUtf8(ex.what()));
        }
        catch (...)
        {
                qCWarning(lcWidget2D)
                        << "Background initImageReader failed with an unknown exception.";
                emit t_self->imageReaderFailed(Widget2D::tr("Unknown error while preparing the image reader."));
        }
}

//-----------------------------------------------------------------------------
bool asclepios::gui::Widget2D::canScrollBeRefreshed(const int& t_patientIndex, const int& t_studyIndex,
                                                    const int& t_seriesIndex) const
{
	return m_vtkWidget && m_vtkWidget->getImage() && t_patientIndex == m_patientIndex &&
		t_studyIndex == m_studyIndex && m_seriesIndex == t_seriesIndex;
}
