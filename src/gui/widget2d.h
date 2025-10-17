#pragma once

#include <qfuture.h>
#include <qscrollbar.h>
#include <QFutureWatcher>
#include <QImage>
#include <QLabel>
#include <QPointer>
#include <QResizeEvent>
#include <QString>
#include <QVector>
#include <QRgb>
#include <QVTKOpenGLNativeWidget.h>
#include <vtkEventQtSlotConnect.h>
#include "ui_widget2d.h"
#include "vtkwidget2d.h"
#include "vtkwidgetbase.h"
#include "widgetbase.h"



namespace asclepios::gui
{
	class Widget2D final : public WidgetBase
	{
	Q_OBJECT
	public:
		explicit Widget2D(QWidget* parent = Q_NULLPTR);
		~Widget2D() = default;

		//getters
		[[nodiscard]] QVTKOpenGLNativeWidget* getWidgetOpenGLNative() const { return m_qtvtkWidget; }
		[[nodiscard]] vtkWidgetBase* getWidgetVTK() const { return m_vtkWidget.get(); }
		[[nodiscard]] QScrollBar* getScrollBar() const { return m_scroll; }
                [[nodiscard]] QFuture<void> getFuture() const { return m_future; }
                void setRenderRequestSource(const QString& t_source) { m_lastRenderRequestSource = t_source; }
                [[nodiscard]] QString getRenderRequestSource() const { return m_lastRenderRequestSource; }
                [[nodiscard]] bool wasRenderAbortedDueToMissingContext() const
                {
                        return m_renderAbortedDueToMissingContext;
                }
                void clearRenderAbortedDueToMissingContext()
                {
                        m_renderAbortedDueToMissingContext = false;
                        m_lastRenderRequestSource.clear();
                }

                void render() override;

        signals:
                void imageReaderInitialized();
                void imageReaderFailed(const QString& t_message);

        public slots:
                void onActivateWidget(const bool& t_flag);
                void onApplyTransformation(const transformationType& t_type) const;
                void onRefreshScrollValues(core::Series* t_series, core::Image* t_image);
                void onChangeScrollValue(vtkObject* t_obj, unsigned long t_index, void*, void*) const;
                void onSetMaximized() const;
                void onRenderFailed(const QString& t_message);
                void onImagesLoaded();

        private slots :
                void onChangeImage(int t_index);
                void onRenderFinished();

	protected:
		void closeEvent(QCloseEvent* t_event) override;

	private:
                Ui::Widget2D m_ui = {};
                QVTKOpenGLNativeWidget* m_qtvtkWidget = {};
                std::unique_ptr<vtkWidgetBase> m_vtkWidget = {};
                vtkSmartPointer<vtkEventQtSlotConnect> m_scrollConnection = {};
                QScrollBar* m_scroll = {};
                QFuture<void> m_future = {};
                std::unique_ptr<QFutureWatcher<QVector<QImage>>> m_imageLoadWatcher = {};
                QFuture<QVector<QImage>> m_imageLoadFuture = {};
                QPointer<QLabel> m_errorLabel = {};
                QPointer<QLabel> m_imageLabel = {};
                QVector<QImage> m_loadedFrames = {};
                QString m_lastRenderRequestSource = {};
                bool m_renderAbortedDueToMissingContext = false;
                bool m_useDcmtkPipeline = true;
                bool m_dcmtkRenderingActive = false;
                int m_currentFrameIndex = 0;

                void initView() override;
                void initData() override;
                void createConnections() override;
                void resetView() override;
                void connectScroll();
                void startLoadingAnimation() override;
                void disconnectScroll() const;
                void resetWidgets();
                void resetScroll();
                void setScrollStyle() const;
                void setSliderValues(const int& t_min, const int& t_max, const int& t_value) override;
                static void initImageReader(vtkWidget2D* t_vtkWidget2D, Widget2D* t_self);
                [[nodiscard]] bool canScrollBeRefreshed(const int& t_patientIndex, const int& t_studyIndex,
                                                        const int& t_seriesIndex) const;
                [[nodiscard]] bool startDcmtkRendering();
                void ensureImageLabel();
                void applyLoadedFrame(const int t_index);
                void renderWithVtk();
                static QVector<QImage> loadFramesWithDcmtk(core::Series* t_series, core::Image* t_image);
                static const QVector<QRgb>& grayscaleColorTable();
                void handleDcmtkFailure(const QString& t_reason);
                void resizeEvent(QResizeEvent* t_event) override;
        };
}
