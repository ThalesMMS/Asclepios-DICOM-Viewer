#pragma once

#include <qfuture.h>
#include <QElapsedTimer>
#include <QResizeEvent>
#include <QVTKOpenGLNativeWidget.h>
#include "vtkwidget3d.h"
#include "widgetbase.h"
#include "toolbarwidget3d.h"
#include "ui_widget3d.h"

namespace asclepios::gui
{
	class Widget3D final : public WidgetBase
	{
	Q_OBJECT
	public:
		explicit Widget3D(QWidget* parent = Q_NULLPTR);
		~Widget3D() { m_future.waitForFinished(); }

		//getters
		[[nodiscard]] QFuture<void> getFuture() const { return m_future; }
		
		void render() override;

	signals:
		void finishedRenderAsync();

	protected:
		bool eventFilter(QObject* watched, QEvent* event) override;
        void resizeEvent(QResizeEvent* event) override;

	private slots:
		void onfilterChanged(const QString& t_filter) const;
		void onCropPressed(const bool& t_pressed) const;
		void onActivateWidget(const bool& t_flag);
		void onSetMaximized() const;
		void onFinishedRenderAsync();

	private:
		Ui::Widget3D m_ui = {};
		ToolbarWidget3D* m_toolbar = {};
		QVTKOpenGLNativeWidget* m_qtvtkWidget = {};
		std::unique_ptr<vtkWidget3D> m_vtkWidget = {};
                QFuture<void> m_future = {};
                QElapsedTimer m_renderTimer = {};

		void initView() override;
		void initData() override;
		void createConnections() override;
		void startLoadingAnimation() override;
		void positionLoadingAnimation();
		void static onRenderAsync(Widget3D* t_self);
	};
}








