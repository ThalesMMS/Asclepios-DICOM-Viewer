#pragma once

#include <qfuture.h>
#include <qscrollbar.h>
#include <QByteArray>
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
#include <dcmtk/dcmimgle/diutils.h>
#include "ui_widget2d.h"
#include "vtkwidget2d.h"
#include "vtkwidgetbase.h"
#include "widgetbase.h"

#include <memory>



class DicomImage;

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

        struct PresentationState
        {
                double WindowCenter = 0.0;
                double WindowWidth = 0.0;
                bool InvertColors = false;
                bool FlipHorizontal = false;
                bool FlipVertical = false;
                int RotationSteps = 0;
        };

        class DcmtkImagePresenter
        {
        public:
                struct FrameBuffer
                {
                        QByteArray Data = {};
                        core::DicomPixelInfo PixelInfo = {};
                        int Width = 0;
                        int Height = 0;
                        int SamplesPerPixel = 1;
                        EP_Representation Representation = EPR_Uint8;
                        double MinValue = 0.0;
                        double MaxValue = 0.0;
                        double DefaultWindowCenter = 0.0;
                        double DefaultWindowWidth = 0.0;
                        DicomImage* SourceImage = nullptr;
                        int FrameIndex = 0;
                };

                DcmtkImagePresenter() = default;
                ~DcmtkImagePresenter() = default;

                [[nodiscard]] bool isValid() const;
                [[nodiscard]] int frameCount() const;
                [[nodiscard]] PresentationState initialState() const { return m_initialState; }
                [[nodiscard]] QImage renderFrame(int frameIndex, const PresentationState& state) const;

                static std::shared_ptr<DcmtkImagePresenter> load(core::Series* t_series, core::Image* t_image);

        private:
                PresentationState m_initialState = {};
                QVector<FrameBuffer> m_frames = {};
                std::unique_ptr<DicomImage> m_multiFrameImage = {};
                QVector<std::unique_ptr<DicomImage>> m_singleFrameImages = {};

                static core::DicomPixelInfo extractPixelInfo(const std::string& t_path, const core::Image* t_fallbackImage);
                void populateFromImage(core::Image* t_image);
                void populateFromSeries(core::Series* t_series);
                void appendFrame(DicomImage* t_sourceImage, const core::DicomPixelInfo& t_pixelInfo, int t_frameIndex);
                [[nodiscard]] static std::size_t bytesPerSample(EP_Representation t_representation);
        };

        public slots:
                void onActivateWidget(const bool& t_flag);
                void onApplyTransformation(const transformationType& t_type);
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
                std::unique_ptr<QFutureWatcher<std::shared_ptr<DcmtkImagePresenter>>> m_imageLoadWatcher = {};
                QFuture<std::shared_ptr<DcmtkImagePresenter>> m_imageLoadFuture = {};
                QPointer<QLabel> m_errorLabel = {};
                QPointer<QLabel> m_imageLabel = {};
                std::shared_ptr<DcmtkImagePresenter> m_dcmtkPresenter = {};
                QString m_lastRenderRequestSource = {};
                bool m_renderAbortedDueToMissingContext = false;
                bool m_useDcmtkPipeline = true;
                bool m_dcmtkRenderingActive = false;
                int m_currentFrameIndex = 0;
                PresentationState m_presentationState = {};

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
                static std::shared_ptr<DcmtkImagePresenter> loadFramesWithDcmtk(core::Series* t_series, core::Image* t_image);
                static const QVector<QRgb>& grayscaleColorTable();
                void handleDcmtkFailure(const QString& t_reason);
                void resizeEvent(QResizeEvent* t_event) override;
        };
}
