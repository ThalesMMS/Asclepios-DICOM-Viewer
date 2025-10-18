#pragma once

#include <qfuture.h>
#include <qscrollbar.h>
#include <QByteArray>
#include <QElapsedTimer>
#include <QFutureWatcher>
#include <QImage>
#include <QLabel>
#include <QPointer>
#include <QResizeEvent>
#include <QPoint>
#include <QString>
#include <QSize>
#include <QVector>
#include <QRgb>
#include <QMutex>
#include <dcmtk/dcmimgle/diutils.h>
#include "ui_widget2d.h"
#include "dcmtkoverlaywidget.h"
#include "widgetbase.h"

#include <memory>
#include <vector>



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
                [[nodiscard]] QScrollBar* getScrollBar() const { return m_scroll; }
                void waitForPendingTasks() const;
                void setRenderRequestSource(const QString& t_source) { m_lastRenderRequestSource = t_source; }
                [[nodiscard]] QString getRenderRequestSource() const { return m_lastRenderRequestSource; }
                void setFitToWindowEnabled(bool t_enabled);
                [[nodiscard]] bool isFitToWindowEnabled() const { return m_fitToWindowEnabled; }
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
                        asclepios::core::DicomPixelInfo PixelInfo = {};
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
                        bool Cached = false;
                };

                DcmtkImagePresenter() = default;
                ~DcmtkImagePresenter() = default;

                [[nodiscard]] bool isValid() const;
                [[nodiscard]] int frameCount() const;
                [[nodiscard]] PresentationState initialState() const { return m_initialState; }
                [[nodiscard]] QImage renderFrame(int frameIndex, const PresentationState& state);
                [[nodiscard]] std::size_t totalAllocatedFrameBytes() const { return m_totalFrameBytes; }
                [[nodiscard]] qint64 decodingDurationMs() const { return m_decodingDurationMs; }
                void setDecodingDurationMs(qint64 t_duration) { m_decodingDurationMs = t_duration; }
                void prefetchAllFrames();

                static std::shared_ptr<DcmtkImagePresenter> load(asclepios::core::Series* t_series, asclepios::core::Image* t_image);

        private:
                PresentationState m_initialState = {};
                QVector<FrameBuffer> m_frames = {};
                std::unique_ptr<DicomImage> m_multiFrameImage = {};
                std::vector<std::unique_ptr<DicomImage>> m_singleFrameImages = {};
                std::size_t m_totalFrameBytes = 0;
                qint64 m_decodingDurationMs = 0;
                mutable QMutex m_cacheMutex = {};

                static asclepios::core::DicomPixelInfo extractPixelInfo(const std::string& t_path, const asclepios::core::Image* t_fallbackImage);
                void populateFromImage(asclepios::core::Image* t_image);
                void populateFromSeries(asclepios::core::Series* t_series);
                void initializeFrameBuffer(DicomImage* t_sourceImage, const asclepios::core::DicomPixelInfo& t_pixelInfo, int t_frameIndex);
                void ensureFrameCached(FrameBuffer& t_frame);
                [[nodiscard]] static std::size_t bytesPerSample(EP_Representation t_representation);
        };

        public slots:
                void onActivateWidget(const bool& t_flag);
                void onApplyTransformation(const transformationType& t_type);
                void onRefreshScrollValues(asclepios::core::Series* t_series, asclepios::core::Image* t_image);
                void onSetMaximized() const;
                void onImagesLoaded();

        private slots :
                void onChangeImage(int t_index);
                void onFramePrefetchFinished();

        protected:
                void closeEvent(QCloseEvent* t_event) override;
                bool eventFilter(QObject* t_watched, QEvent* t_event) override;

        private:
                Ui::Widget2D m_ui = {};
                QScrollBar* m_scroll = {};
                std::unique_ptr<QFutureWatcher<std::shared_ptr<DcmtkImagePresenter>>> m_imageLoadWatcher = {};
                QFuture<std::shared_ptr<DcmtkImagePresenter>> m_imageLoadFuture = {};
                QPointer<QLabel> m_errorLabel = {};
                QPointer<QLabel> m_imageLabel = {};
                QPointer<DcmtkOverlayWidget> m_overlayWidget = {};
                std::shared_ptr<DcmtkImagePresenter> m_dcmtkPresenter = {};
                QString m_lastRenderRequestSource = {};
                bool m_renderAbortedDueToMissingContext = false;
                bool m_dcmtkRenderingActive = false;
                int m_currentFrameIndex = 0;
                PresentationState m_presentationState = {};
                QImage m_cachedFrame = {};
                double m_displayZoomFactor = 1.0;
                double m_manualZoomFactor = 1.0;
                bool m_fitToWindowEnabled = false;
                bool m_windowLevelDragging = false;
                QPoint m_lastMousePosition = {};
                double m_initialWindowCenter = 0.0;
                double m_initialWindowWidth = 1.0;
                QElapsedTimer m_firstFrameTimer = {};
                QElapsedTimer m_frameLoadTimer = {};
                bool m_reportedFirstFrame = false;
                QFuture<void> m_framePrefetchFuture = {};
                std::unique_ptr<QFutureWatcher<void>> m_framePrefetchWatcher = {};

                void initView() override;
                void initData() override;
                void createConnections() override;
                void resetView() override;
                void connectScroll();
                void startLoadingAnimation() override;
                void disconnectScroll() const;
                void resetScroll();
                void setScrollStyle() const;
                void setSliderValues(const int& t_min, const int& t_max, const int& t_value) override;
                [[nodiscard]] bool canScrollBeRefreshed(const int& t_patientIndex, const int& t_studyIndex,
                                                        const int& t_seriesIndex) const;
                [[nodiscard]] bool startDcmtkRendering();
                void ensureImageLabel();
                void ensureOverlayWidget();
                void refreshDisplayedFrame(bool t_updateOverlay);
                void applyLoadedFrame(const int t_index);
                static std::shared_ptr<DcmtkImagePresenter> loadFramesWithDcmtk(asclepios::core::Series* t_series, asclepios::core::Image* t_image);
                static const QVector<QRgb>& grayscaleColorTable();
                void handleDcmtkFailure(const QString& t_reason);
                void updateDcmtkOverlay(const QImage& t_frameImage, int t_frameIndex);
                void hideDcmtkOverlay();
                void resizeEvent(QResizeEvent* t_event) override;
                void adjustFrameByStep(int t_step);
                void resetWindowLevel();
                void positionLoadingAnimation();
        };
}
