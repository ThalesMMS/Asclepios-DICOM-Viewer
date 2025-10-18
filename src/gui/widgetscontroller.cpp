#include "widgetscontroller.h"
#include "filesimporter.h"
#include "widget2d.h"
#include "vtkwidget2d.h"

#include <QLoggingCategory>
#include <QString>
#include <QtGlobal>
#include <QVariant>

Q_LOGGING_CATEGORY(lcWidgetsController, "asclepios.gui.widgetscontroller")

asclepios::gui::WidgetsController::WidgetsController()
{
        initData();
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::initData()
{
	m_widgetsRepository = std::make_unique<WidgetsRepository>();
	m_widgetsContainer = std::make_unique<WidgetsContainer>();
	m_widgetsContainer->setWidgetReference(&m_widgetsRepository->getWidgets());
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::createWidgets(const WidgetsContainer::layouts& t_layout)
{
        resetConnections();
        createRemoveWidgets(computeNumberWidgetsFromLayout(t_layout));
        m_widgetsContainer->setLayout(t_layout);
        m_currentLayout = t_layout;
        createConnections();
        (*m_widgetsRepository->getWidgets().begin())->onFocus(true);
}

void asclepios::gui::WidgetsController::createWidgetMPR3D(const WidgetBase::WidgetType& t_type) const
{
	if (!m_activeWidget || !m_activeWidget->getTabbedWidget()->getSeries()
		|| !m_activeWidget->getTabbedWidget()->getImage())
	{
		return;
	}
	m_activeWidget->createWidgetMPR3D(t_type);
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::applyTransformation(const transformationType& t_type) const
{
        if (!m_activeWidget)
        {
                return;
        }

        if (auto* const widget2d = dynamic_cast<Widget2D*>(m_activeWidget->getTabbedWidget());
                widget2d && widget2d->getWidgetType() == WidgetBase::WidgetType::widget2d
                && widget2d->getIsImageLoaded() && widget2d->getImage())
        {
                widget2d->onApplyTransformation(t_type);
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::resetData() const
{
	waitForRenderingThreads();
	const auto widgets = m_widgetsRepository->getWidgets();
	for (const auto& widget : widgets)
	{
		if (widget->getTabbedWidget()->getImage())
		{
			widget->resetWidget();
		}
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::waitForRenderingThreads() const
{
        const auto widgets = m_widgetsRepository->getWidgets();
        for (const auto& widget : widgets)
        {
                if (auto* widget2d = dynamic_cast<Widget2D*>(widget->getTabbedWidget()))
                {
                        widget2d->waitForPendingTasks();
                }
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::setActiveWidget(TabWidget* t_widget)
{
	if (m_activeWidget)
	{
		m_activeWidget->onFocus(false);
	}
	m_activeWidget = t_widget;
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::setMaximize(TabWidget* t_widget) const
{
	const auto widgets = m_widgetsRepository->getWidgets();
	t_widget->setIsMaximized(!t_widget->getIsMaximized());
	for (const auto& widget : widgets)
	{
		if (t_widget != widget)
		{
			widget->setVisible(!t_widget->getIsMaximized());
		}
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::populateWidget(core::Series* t_series, core::Image* t_image)
{
        auto* const widget = findNextAvailableWidget();
        if (widget)
        {
                auto* const widget2d = dynamic_cast<Widget2D*>(widget->getActiveTabbedWidget());
                if (!widget2d)
                {
                        return;
                }
                if (!t_series || !t_image)
                {
                        qCWarning(lcWidgetsController)
                                << "populateWidget received null data from importer."
                                << "seriesMissing" << (t_series == nullptr)
                                << "imageMissing" << (t_image == nullptr);
                        widget2d->setIsImageLoaded(false);
                        return;
                }
                widget2d->setWidgetType(WidgetBase::WidgetType::widget2d);
                widget2d->setRenderRequestSource(QStringLiteral("FilesImporter::populateWidget"));
                widget2d->setSeries(t_series);
                widget2d->setImage(t_image);
                auto* const study = t_series->getParentObject();
                widget2d->setIndexes(study->getParentObject()->getIndex(),
                                     study->getIndex(), t_series->getIndex(),
                                     t_image->getIndex());
                widget2d->setIsImageLoaded(true);
                qCInfo(lcWidgetsController)
                        << "Requesting render for series" << QString::fromStdString(t_series->getUID())
                        << "(index" << t_series->getIndex() << ")"
                        << "image" << QString::fromStdString(t_image->getSOPInstanceUID())
                        << "(index" << t_image->getIndex() << ")"
                        << "layout" << layoutToString(m_currentLayout);
                widget2d->render();
                connectVtkToolBridge(widget2d);
                if (widget2d->wasRenderAbortedDueToMissingContext())
                {
                        qCWarning(lcWidgetsController)
                                << "Widget2D render aborted due to missing context."
                                << "seriesMissing" << (widget2d->getSeries() == nullptr)
                                << "imageMissing" << (widget2d->getImage() == nullptr)
                                << "trigger" << widget2d->getRenderRequestSource();
                        widget2d->setIsImageLoaded(false);
                        widget2d->clearRenderAbortedDueToMissingContext();
                        return;
                }
                Q_UNUSED(connect(m_filesImporter, &FilesImporter::refreshScrollValues,
                        widget2d, &Widget2D::onRefreshScrollValues));
        }
}

//-----------------------------------------------------------------------------
const char* asclepios::gui::WidgetsController::layoutToString(const WidgetsContainer::layouts& t_layout)
{
        switch (t_layout)
        {
        case WidgetsContainer::layouts::one:
                return "one";
        case WidgetsContainer::layouts::twoRowOneBottom:
                return "twoRowOneBottom";
        case WidgetsContainer::layouts::twoColumnOneRight:
                return "twoColumnOneRight";
        case WidgetsContainer::layouts::threeRowOneBottom:
                return "threeRowOneBottom";
        case WidgetsContainer::layouts::threeColumnOneRight:
                return "threeColumnOneRight";
        case WidgetsContainer::layouts::none:
        default:
                return "none";
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::createRemoveWidgets(const std::size_t& t_nrWidgets) const
{
	while (t_nrWidgets != m_widgetsRepository->getWidgets().size())
	{
		m_widgetsRepository->getWidgets().size() > t_nrWidgets
			? m_widgetsRepository->removeWidget()
			: m_widgetsRepository->addWidget(createNewWidget());
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::createConnections()
{
        const auto widgets = m_widgetsRepository->getWidgets();
        for (const auto& widget : widgets)
        {
                Q_UNUSED(connect(widget, &TabWidget::focused, this,
                        &WidgetsController::setActiveWidget));
                Q_UNUSED(connect(widget, &TabWidget::setMaximized, this,
                        &WidgetsController::setMaximize));
                if (auto* const widget2d = dynamic_cast<Widget2D*>(widget->getTabbedWidget()))
                {
                        connectVtkToolBridge(widget2d);
                }
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::WidgetsController::resetConnections()
{
        m_activeWidget = nullptr;
        for (auto& binding : m_vtkToolConnections)
        {
                QObject::disconnect(binding.second.toolConnection);
                QObject::disconnect(binding.second.destroyedConnection);
        }
        m_vtkToolConnections.clear();
        const auto widgets = m_widgetsRepository->getWidgets();
        for (const auto& widget : widgets)
        {
                widget->onFocus(false);
                widget->setIsMaximized(false);
		widget->setVisible(true);
		disconnect(widget, &TabWidget::focused, this,
		           &WidgetsController::setActiveWidget);
		disconnect(widget, &TabWidget::setMaximized, this,
		           &WidgetsController::setMaximize);
		if (auto* const widget2d = dynamic_cast<Widget2D*>(widget->getTabbedWidget()); widget2d)
		{
			disconnect(m_filesImporter, &FilesImporter::refreshScrollValues,
			           widget2d, &Widget2D::onRefreshScrollValues);
		}
	}
}

//-----------------------------------------------------------------------------
asclepios::gui::TabWidget* asclepios::gui::WidgetsController::createNewWidget() const
{
	auto* const widget = new TabWidget(m_widgetsContainer.get());
	widget->createWidget2D();
	return widget;
}

//-----------------------------------------------------------------------------
asclepios::gui::TabWidget* asclepios::gui::WidgetsController::findNextAvailableWidget() const
{
	const auto widgets = m_widgetsRepository->getWidgets();
	const auto it = std::find_if(widgets.begin(),
	                             widgets.end(), [](TabWidget* t_widget)
	                             {
		                             return !t_widget->getActiveTabbedWidget()->getIsImageLoaded();
	                             });
	return it == widgets.end() ? nullptr : *it;
}

//-----------------------------------------------------------------------------
std::size_t asclepios::gui::WidgetsController::computeNumberWidgetsFromLayout(const WidgetsContainer::layouts& t_layout)
{
        return t_layout == WidgetsContainer::layouts::one ? 1 : static_cast<std::size_t>(t_layout) / 2 + 2ul;
}

void asclepios::gui::WidgetsController::connectVtkToolBridge(Widget2D* t_widget)
{
        if (!t_widget)
        {
                return;
        }

        const QVariant property = t_widget->property(Widget2D::vtkWidgetPropertyName);
        const auto rawValue = property.isValid()
                ? property.value<quintptr>()
                : static_cast<quintptr>(0);
        auto* const vtkWidget = rawValue != 0
                ? reinterpret_cast<vtkWidget2D*>(rawValue)
                : nullptr;

        auto bindingIt = m_vtkToolConnections.find(t_widget);
        const auto removeBinding = [this, &bindingIt]()
        {
                if (bindingIt != m_vtkToolConnections.end())
                {
                        QObject::disconnect(bindingIt->second.toolConnection);
                        QObject::disconnect(bindingIt->second.destroyedConnection);
                        m_vtkToolConnections.erase(bindingIt);
                }
        };

        if (!vtkWidget)
        {
                removeBinding();
                return;
        }

        if (bindingIt != m_vtkToolConnections.end())
        {
                if (bindingIt->second.target == vtkWidget)
                {
                        return;
                }
                removeBinding();
                bindingIt = m_vtkToolConnections.end();
        }

        vtkWidget->setActiveTool(t_widget->activeTool());
        const auto toolConnection = QObject::connect(t_widget, &Widget2D::activeToolChanged,
                this, [vtkWidget](InteractionTool t_tool)
                {
                        vtkWidget->setActiveTool(t_tool);
                });
        if (!toolConnection)
        {
                return;
        }

        const auto destroyedConnection = QObject::connect(t_widget, &QObject::destroyed,
                this, [this, t_widget]()
                {
                        auto it = m_vtkToolConnections.find(t_widget);
                        if (it != m_vtkToolConnections.end())
                        {
                                QObject::disconnect(it->second.toolConnection);
                                QObject::disconnect(it->second.destroyedConnection);
                                m_vtkToolConnections.erase(it);
                        }
                });
        if (!destroyedConnection)
        {
                QObject::disconnect(toolConnection);
                return;
        }

        m_vtkToolConnections.emplace(t_widget, VtkToolBinding{toolConnection, destroyedConnection, vtkWidget});
}
