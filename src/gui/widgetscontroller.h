#pragma once
#include <QObject>
#include <memory>
#include <unordered_map>


#include "widgetscontainer.h"
#include "widgetsrepository.h"

namespace asclepios::gui
{
        class FilesImporter;
        class Widget2D;
        class vtkWidget2D;
        class WidgetsController final : public QObject
        {
        Q_OBJECT
        public:
                WidgetsController();
		~WidgetsController() = default;


		//getters
		[[nodiscard]] WidgetsRepository* getWidgetsRepository() const { return m_widgetsRepository.get(); }
		[[nodiscard]] WidgetsContainer* getWidgetsContainer() const { return m_widgetsContainer.get(); }
		[[nodiscard]] TabWidget* getActiveWidget() const { return m_activeWidget; }

		//setters
		void setFilesImporter(FilesImporter* t_importer) { m_filesImporter = t_importer; }

		void createWidgets(const WidgetsContainer::layouts& t_layout);
		void createWidgetMPR3D(const WidgetBase::WidgetType& t_type) const;
		void applyTransformation(const transformationType& t_type) const;
		void resetData() const;
		void waitForRenderingThreads() const;
		
	public slots:
		void setActiveWidget(TabWidget* t_widget);
		void setMaximize(TabWidget* t_widget) const;
                void populateWidget(core::Series* t_series, core::Image* t_image);

        private:
                struct VtkToolBinding
                {
                        QMetaObject::Connection toolConnection = {};
                        QMetaObject::Connection destroyedConnection = {};
                        vtkWidget2D* target = nullptr;
                };

                std::unique_ptr<WidgetsRepository> m_widgetsRepository = {};
                std::unique_ptr<WidgetsContainer> m_widgetsContainer = {};
                TabWidget* m_activeWidget = {};
                FilesImporter* m_filesImporter = {};
                WidgetsContainer::layouts m_currentLayout = WidgetsContainer::layouts::none;
                std::unordered_map<Widget2D*, VtkToolBinding> m_vtkToolConnections = {};

                void initData();
                void createRemoveWidgets(const std::size_t& t_nrWidgets) const;
                void createConnections();
                void resetConnections();
                [[nodiscard]] TabWidget* createNewWidget() const;
                [[nodiscard]] TabWidget* findNextAvailableWidget() const;
                void connectVtkToolBridge(Widget2D* t_widget);
                [[nodiscard]] std::size_t computeNumberWidgetsFromLayout(const WidgetsContainer::layouts& t_layout);
                [[nodiscard]] static const char* layoutToString(const WidgetsContainer::layouts& t_layout);
        };
}
