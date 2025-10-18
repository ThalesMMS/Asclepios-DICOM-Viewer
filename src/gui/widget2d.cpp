#include "widget2d.h"
#include <exception>
#include <QFile>
#include <QFocusEvent>
#include <QHBoxLayout>
#include <QLoggingCategory>
#include <QMouseEvent>
#include <QPainter>
#include <QPixmap>
#include <QSignalBlocker>
#include <QSizePolicy>
#include <QTransform>
#include <QString>
#include <QKeyEvent>
#include <QCursor>
#include <QWheelEvent>
#include <QtConcurrent/QtConcurrent>
#include <QMutexLocker>
#include <dcmtk/dcmimgle/dcmimage.h>
#include <dcmtk/dcmdata/dcdeftag.h>
#include <dcmtk/dcmdata/dcfilefo.h>
#include <dcmtk/ofstd/ofstring.h>
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <limits>
#include <memory>
#include <stdexcept>
#include <utility>
#include "patient.h"
#include "series.h"
#include "smartdjdecoderregistration.h"
#include "study.h"
#include "tabwidget.h"

Q_LOGGING_CATEGORY(lcWidget2D, "asclepios.gui.widget2d")


const QVector<QRgb>& asclepios::gui::Widget2D::grayscaleColorTable()
{
        static QVector<QRgb> colorTable;
        if (colorTable.isEmpty())
        {
                colorTable.reserve(256);
                for (int index = 0; index < 256; ++index)
                {
                        colorTable.append(qRgb(index, index, index));
                }
        }
        return colorTable;
}

bool asclepios::gui::Widget2D::DcmtkImagePresenter::isValid() const
{
        return !m_frames.isEmpty();
}

int asclepios::gui::Widget2D::DcmtkImagePresenter::frameCount() const
{
        return m_frames.size();
}

std::size_t asclepios::gui::Widget2D::DcmtkImagePresenter::bytesPerSample(EP_Representation t_representation)
{
        switch (t_representation)
        {
        case EPR_Uint8:
        case EPR_Sint8:
                return sizeof(std::uint8_t);
        case EPR_Uint16:
        case EPR_Sint16:
                return sizeof(std::uint16_t);
        case EPR_Uint32:
        case EPR_Sint32:
                return sizeof(std::uint32_t);
        default:
                return 0;
        }
}

asclepios::core::DicomPixelInfo asclepios::gui::Widget2D::DcmtkImagePresenter::extractPixelInfo(
        const std::string& t_path, const asclepios::core::Image* t_fallbackImage)
{
        asclepios::core::DicomPixelInfo info;
        if (t_fallbackImage)
        {
                info.WindowCenter = static_cast<double>(t_fallbackImage->getWindowCenter());
                info.WindowWidth = static_cast<double>(t_fallbackImage->getWindowWidth());
        }

        DcmFileFormat fileFormat;
        if (fileFormat.loadFile(t_path.c_str()).good())
        {
                auto* dataset = fileFormat.getDataset();
                if (dataset)
                {
                        Sint32 samplesPerPixel = 0;
                        if (dataset->findAndGetSint32(DCM_SamplesPerPixel, samplesPerPixel).good())
                        {
                                info.SamplesPerPixel = static_cast<int>(samplesPerPixel);
                        }

                        Uint16 bitsAllocated = 0;
                        if (dataset->findAndGetUint16(DCM_BitsAllocated, bitsAllocated).good())
                        {
                                info.BitsAllocated = static_cast<int>(bitsAllocated);
                        }

                        Uint16 pixelRepresentation = 0;
                        if (dataset->findAndGetUint16(DCM_PixelRepresentation, pixelRepresentation).good())
                        {
                                info.IsSigned = (pixelRepresentation != 0);
                        }

                        Uint16 planarConfiguration = 0;
                        if (dataset->findAndGetUint16(DCM_PlanarConfiguration, planarConfiguration).good())
                        {
                                info.IsPlanar = (planarConfiguration == 1);
                        }

                        OFString photometric;
                        if (dataset->findAndGetOFString(DCM_PhotometricInterpretation, photometric).good())
                        {
                                info.InvertMonochrome = (photometric == "MONOCHROME1");
                        }

                        double slope = info.RescaleSlope;
                        if (dataset->findAndGetFloat64(DCM_RescaleSlope, slope).good())
                        {
                                info.RescaleSlope = slope;
                        }

                        double intercept = info.RescaleIntercept;
                        if (dataset->findAndGetFloat64(DCM_RescaleIntercept, intercept).good())
                        {
                                info.RescaleIntercept = intercept;
                        }

                        double windowCenter = info.WindowCenter;
                        if (dataset->findAndGetFloat64(DCM_WindowCenter, windowCenter, 0).good())
                        {
                                info.WindowCenter = windowCenter;
                        }

                        double windowWidth = info.WindowWidth;
                        if (dataset->findAndGetFloat64(DCM_WindowWidth, windowWidth, 0).good())
                        {
                                info.WindowWidth = windowWidth;
                        }
                }
        }

        return info;
}

void asclepios::gui::Widget2D::DcmtkImagePresenter::initializeFrameBuffer(DicomImage* t_sourceImage,
        const asclepios::core::DicomPixelInfo& t_pixelInfo, const int t_frameIndex)
{
        if (!t_sourceImage)
        {
                throw std::runtime_error("Missing DICOM image context");
        }
        if (t_sourceImage->getStatus() != EIS_Normal)
        {
                throw std::runtime_error(DicomImage::getString(t_sourceImage->getStatus()));
        }

        FrameBuffer frame;
        frame.PixelInfo = t_pixelInfo;
        frame.SourceImage = t_sourceImage;
        frame.FrameIndex = t_frameIndex;
        frame.Width = static_cast<int>(t_sourceImage->getWidth());
        frame.Height = static_cast<int>(t_sourceImage->getHeight());
        frame.SamplesPerPixel = (t_pixelInfo.SamplesPerPixel > 0)
                ? t_pixelInfo.SamplesPerPixel
                : 1;

        if (frame.SamplesPerPixel <= 1)
        {
                double minValue = 0.0;
                double maxValue = 0.0;
                if (t_sourceImage->getMinMaxValues(minValue, maxValue))
                {
                        frame.MinValue = minValue;
                        frame.MaxValue = maxValue;
                }

                double windowCenter = t_pixelInfo.WindowCenter;
                double windowWidth = t_pixelInfo.WindowWidth;
                bool hasWindow = (windowWidth > 0.0);

                if (!hasWindow)
                {
                        double voiCenter = 0.0;
                        double voiWidth = 0.0;
                        if (t_sourceImage->getWindow(voiCenter, voiWidth))
                        {
                                windowCenter = voiCenter;
                                windowWidth = voiWidth;
                                hasWindow = (windowWidth > 0.0);
                        }
                }

                if (!hasWindow && frame.MaxValue > frame.MinValue)
                {
                        windowWidth = frame.MaxValue - frame.MinValue;
                        windowCenter = (frame.MaxValue + frame.MinValue) * 0.5;
                        hasWindow = true;
                }

                if (!hasWindow)
                {
                        windowWidth = 1.0;
                        windowCenter = 0.0;
                }

                frame.DefaultWindowWidth = std::max(windowWidth, 1.0);
                frame.DefaultWindowCenter = windowCenter;
        }
        else
        {
                frame.MinValue = 0.0;
                frame.MaxValue = 255.0;
                frame.DefaultWindowWidth = 255.0;
                frame.DefaultWindowCenter = 127.0;
        }

        if (m_frames.isEmpty())
        {
                m_initialState.WindowCenter = frame.DefaultWindowCenter;
                m_initialState.WindowWidth = frame.DefaultWindowWidth;
                m_initialState.InvertColors = frame.PixelInfo.InvertMonochrome;
                m_initialState.FlipHorizontal = false;
                m_initialState.FlipVertical = false;
                m_initialState.RotationSteps = 0;
        }

        m_frames.append(std::move(frame));
}

void asclepios::gui::Widget2D::DcmtkImagePresenter::ensureFrameCached(FrameBuffer& t_frame)
{
        QMutexLocker locker(&m_cacheMutex);
        if (t_frame.Cached)
        {
                return;
        }

        QElapsedTimer decodeTimer;
        decodeTimer.start();

        if (!t_frame.SourceImage)
        {
                throw std::runtime_error("Missing DICOM image context");
        }
        if (t_frame.SourceImage->getStatus() != EIS_Normal)
        {
                throw std::runtime_error(DicomImage::getString(t_frame.SourceImage->getStatus()));
        }

        const auto* pixelData = t_frame.SourceImage->getInterData();
        if (!pixelData)
        {
                throw std::runtime_error("Intermediate DICOM pixel data unavailable");
        }

        const auto representation = pixelData->getRepresentation();
        const auto bytesPerValue = bytesPerSample(representation);
        if (bytesPerValue == 0)
        {
                throw std::runtime_error("Unsupported pixel representation encountered");
        }

        const auto width = static_cast<int>(t_frame.SourceImage->getWidth());
        const auto height = static_cast<int>(t_frame.SourceImage->getHeight());
        const auto planes = std::max(pixelData->getPlanes(), 1);
        const auto* rawData = static_cast<const char*>(pixelData->getData());
        if (!rawData)
        {
                throw std::runtime_error("Failed to access decompressed DICOM pixel data");
        }

        const std::size_t frameSampleCount = static_cast<std::size_t>(width)
                * static_cast<std::size_t>(height)
                * static_cast<std::size_t>(planes);
        const std::size_t frameByteCount = frameSampleCount * bytesPerValue;
        const std::size_t offset = static_cast<std::size_t>(t_frame.FrameIndex) * frameByteCount;

        if (frameByteCount > static_cast<std::size_t>(std::numeric_limits<int>::max()))
        {
                throw std::runtime_error("Frame data exceeds supported size");
        }

        t_frame.Width = width;
        t_frame.Height = height;
        t_frame.SamplesPerPixel = (t_frame.PixelInfo.SamplesPerPixel > 0)
                ? t_frame.PixelInfo.SamplesPerPixel
                : planes;
        t_frame.Representation = representation;
        t_frame.Data = QByteArray(rawData + static_cast<qint64>(offset),
                static_cast<int>(frameByteCount));

        if (t_frame.SamplesPerPixel <= 1)
        {
                double minValue = t_frame.MinValue;
                double maxValue = t_frame.MaxValue;
                if (t_frame.SourceImage->getMinMaxValues(minValue, maxValue))
                {
                        t_frame.MinValue = minValue;
                        t_frame.MaxValue = maxValue;
                }

                double windowCenter = t_frame.PixelInfo.WindowCenter;
                double windowWidth = t_frame.PixelInfo.WindowWidth;
                bool hasWindow = (windowWidth > 0.0);

                if (!hasWindow)
                {
                        double voiCenter = 0.0;
                        double voiWidth = 0.0;
                        if (t_frame.SourceImage->getWindow(voiCenter, voiWidth))
                        {
                                windowCenter = voiCenter;
                                windowWidth = voiWidth;
                                hasWindow = (windowWidth > 0.0);
                        }
                }

                if (!hasWindow && t_frame.MaxValue > t_frame.MinValue)
                {
                        windowWidth = t_frame.MaxValue - t_frame.MinValue;
                        windowCenter = (t_frame.MaxValue + t_frame.MinValue) * 0.5;
                        hasWindow = true;
                }

                t_frame.DefaultWindowWidth = std::max(windowWidth, 1.0);
                t_frame.DefaultWindowCenter = windowCenter;
        }
        else
        {
                t_frame.MinValue = 0.0;
                t_frame.MaxValue = 255.0;
                t_frame.DefaultWindowWidth = 255.0;
                t_frame.DefaultWindowCenter = 127.0;
        }

        t_frame.Cached = true;
        const std::size_t frameBytes = static_cast<std::size_t>(t_frame.Data.size());
        m_totalFrameBytes += frameBytes;
        m_decodingDurationMs += decodeTimer.elapsed();

        qCInfo(lcWidget2D)
                << "[Telemetry] Frame cached" << "frameIndex" << t_frame.FrameIndex
                << "bytes" << static_cast<unsigned long long>(frameBytes)
                << "accumulatedBytes" << static_cast<unsigned long long>(m_totalFrameBytes)
                << "width" << t_frame.Width << "height" << t_frame.Height
                << "samplesPerPixel" << t_frame.SamplesPerPixel;
}

void asclepios::gui::Widget2D::DcmtkImagePresenter::prefetchAllFrames()
{
        for (auto& frame : m_frames)
        {
                try
                {
                        ensureFrameCached(frame);
                }
                catch (const std::exception& ex)
                {
                        qCWarning(lcWidget2D)
                                << "Failed to prefetch frame" << frame.FrameIndex
                                << ":" << ex.what();
                        return;
                }
                catch (...)
                {
                        qCWarning(lcWidget2D)
                                << "Failed to prefetch frame" << frame.FrameIndex
                                << ": unknown error";
                        return;
                }
        }
}

void asclepios::gui::Widget2D::DcmtkImagePresenter::populateFromImage(asclepios::core::Image* t_image)
{
        if (!t_image)
        {
                return;
        }

        const auto totalFrames = t_image->getNumberOfFrames();
        const auto frameCount = totalFrames > 0 ? static_cast<unsigned long>(totalFrames) : 0ul;
        auto dicomImage = std::make_unique<DicomImage>(
                t_image->getImagePath().c_str(),
                CIF_UsePartialAccessToPixelData | CIF_AcrNemaCompatibility,
                0,
                frameCount);

        if (!dicomImage || dicomImage->getStatus() != EIS_Normal)
        {
                throw std::runtime_error("Failed to decode multi-frame dataset");
        }

        m_multiFrameImage = std::move(dicomImage);
        const auto availableFrames = static_cast<int>(m_multiFrameImage->getFrameCount());
        const auto pixelInfo = extractPixelInfo(t_image->getImagePath(), t_image);
        m_frames.reserve(m_frames.size() + availableFrames);
        for (int frameIndex = 0; frameIndex < availableFrames; ++frameIndex)
        {
                initializeFrameBuffer(m_multiFrameImage.get(), pixelInfo, frameIndex);
        }
        qCInfo(lcWidget2D)
                << "[Telemetry] Multi-frame dataset prepared"
                << "path" << QString::fromStdString(t_image->getImagePath())
                << "frames" << availableFrames;
}

void asclepios::gui::Widget2D::DcmtkImagePresenter::populateFromSeries(asclepios::core::Series* t_series)
{
        if (!t_series)
        {
                return;
        }

        auto& singleFrameImages = t_series->getSingleFrameImages();
        m_frames.reserve(m_frames.size() + static_cast<int>(singleFrameImages.size()));

        for (const auto& imageEntry : singleFrameImages)
        {
                if (!imageEntry)
                {
                        continue;
                }

                auto* const sourceImage = imageEntry.get();
                auto dicomImage = std::make_unique<DicomImage>(
                        sourceImage->getImagePath().c_str(),
                        CIF_UsePartialAccessToPixelData | CIF_AcrNemaCompatibility,
                        0,
                        1);

                if (!dicomImage || dicomImage->getStatus() != EIS_Normal)
                {
                        throw std::runtime_error("Failed to decode single-frame dataset");
                }

                const auto pixelInfo = extractPixelInfo(sourceImage->getImagePath(), sourceImage);
                initializeFrameBuffer(dicomImage.get(), pixelInfo, 0);
                m_singleFrameImages.push_back(std::move(dicomImage));
        }
        qCInfo(lcWidget2D)
                << "[Telemetry] Single-frame series prepared"
                << "seriesUid" << (t_series ? QString::fromStdString(t_series->getUID()) : QStringLiteral("n/a"))
                << "images" << singleFrameImages.size();
}

std::shared_ptr<asclepios::gui::Widget2D::DcmtkImagePresenter> asclepios::gui::Widget2D::DcmtkImagePresenter::load(
        asclepios::core::Series* t_series, asclepios::core::Image* t_image)
{
        auto presenter = std::make_shared<DcmtkImagePresenter>();
        if (!t_image)
        {
                return presenter;
        }

        if (t_image->getIsMultiFrame())
        {
                presenter->populateFromImage(t_image);
        }
        else
        {
                presenter->populateFromSeries(t_series);
        }

        return presenter;
}

QImage asclepios::gui::Widget2D::DcmtkImagePresenter::renderFrame(const int frameIndex,
        const PresentationState& state)
{
        if (frameIndex < 0 || frameIndex >= m_frames.size())
        {
                return {};
        }

        FrameBuffer& frame = m_frames[frameIndex];
        try
        {
                ensureFrameCached(frame);
        }
        catch (const std::exception& ex)
        {
                qCWarning(lcWidget2D)
                        << "Failed to render frame" << frameIndex
                        << ":" << ex.what();
                return {};
        }
        catch (...)
        {
                qCWarning(lcWidget2D)
                        << "Failed to render frame" << frameIndex
                        << ": unknown error";
                return {};
        }

        if (frame.Width <= 0 || frame.Height <= 0)
        {
                return {};
        }

        const bool monochrome = frame.SamplesPerPixel <= 1;
        QImage image;

        if (monochrome)
        {
                image = QImage(frame.Width, frame.Height, QImage::Format_Indexed8);
                if (image.isNull())
                {
                        return image;
                }
                image.setColorTable(Widget2D::grayscaleColorTable());

                const double defaultWidth = std::max(frame.DefaultWindowWidth, 1.0);
                const double defaultCenter = frame.DefaultWindowCenter;

                double windowWidth = state.WindowWidth > 0.0 ? state.WindowWidth : defaultWidth;
                double windowCenter = state.WindowWidth > 0.0 ? state.WindowCenter : defaultCenter;

                if (windowWidth <= 0.0)
                {
                        windowWidth = defaultWidth;
                }
                if (std::abs(windowWidth) < 1e-6)
                {
                        windowWidth = 1.0;
                }

                const double lowerBound = windowCenter - (windowWidth / 2.0);
                const double upperBound = windowCenter + (windowWidth / 2.0);
                const double denominator = std::max(upperBound - lowerBound, 1e-6);

                auto mapValue = [&](const double value)
                {
                        const double normalized = (value - lowerBound) / denominator;
                        const double clamped = std::clamp(normalized, 0.0, 1.0);
                        return static_cast<unsigned char>(std::lround(clamped * 255.0));
                };

                auto* destination = image.bits();
                const auto bytesPerLine = static_cast<std::size_t>(image.bytesPerLine());

                switch (frame.Representation)
                {
                case EPR_Sint8:
                {
                        const auto* source = reinterpret_cast<const std::int8_t*>(frame.Data.constData());
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                auto* destRow = destination + static_cast<std::size_t>(row) * bytesPerLine;
                                const std::size_t baseIndex = static_cast<std::size_t>(row) * frame.Width;
                                for (int col = 0; col < frame.Width; ++col)
                                {
                                        const auto value = static_cast<double>(source[baseIndex + static_cast<std::size_t>(col)]);
                                        destRow[col] = mapValue(value);
                                }
                        }
                        break;
                }
                case EPR_Uint8:
                {
                        const auto* source = reinterpret_cast<const std::uint8_t*>(frame.Data.constData());
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                auto* destRow = destination + static_cast<std::size_t>(row) * bytesPerLine;
                                const std::size_t baseIndex = static_cast<std::size_t>(row) * frame.Width;
                                for (int col = 0; col < frame.Width; ++col)
                                {
                                        const auto value = static_cast<double>(source[baseIndex + static_cast<std::size_t>(col)]);
                                        destRow[col] = mapValue(value);
                                }
                        }
                        break;
                }
                case EPR_Sint16:
                {
                        const auto* source = reinterpret_cast<const std::int16_t*>(frame.Data.constData());
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                auto* destRow = destination + static_cast<std::size_t>(row) * bytesPerLine;
                                const std::size_t baseIndex = static_cast<std::size_t>(row) * frame.Width;
                                for (int col = 0; col < frame.Width; ++col)
                                {
                                        const auto value = static_cast<double>(source[baseIndex + static_cast<std::size_t>(col)]);
                                        destRow[col] = mapValue(value);
                                }
                        }
                        break;
                }
                case EPR_Uint16:
                {
                        const auto* source = reinterpret_cast<const std::uint16_t*>(frame.Data.constData());
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                auto* destRow = destination + static_cast<std::size_t>(row) * bytesPerLine;
                                const std::size_t baseIndex = static_cast<std::size_t>(row) * frame.Width;
                                for (int col = 0; col < frame.Width; ++col)
                                {
                                        const auto value = static_cast<double>(source[baseIndex + static_cast<std::size_t>(col)]);
                                        destRow[col] = mapValue(value);
                                }
                        }
                        break;
                }
                case EPR_Sint32:
                {
                        const auto* source = reinterpret_cast<const std::int32_t*>(frame.Data.constData());
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                auto* destRow = destination + static_cast<std::size_t>(row) * bytesPerLine;
                                const std::size_t baseIndex = static_cast<std::size_t>(row) * frame.Width;
                                for (int col = 0; col < frame.Width; ++col)
                                {
                                        const auto value = static_cast<double>(source[baseIndex + static_cast<std::size_t>(col)]);
                                        destRow[col] = mapValue(value);
                                }
                        }
                        break;
                }
                case EPR_Uint32:
                {
                        const auto* source = reinterpret_cast<const std::uint32_t*>(frame.Data.constData());
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                auto* destRow = destination + static_cast<std::size_t>(row) * bytesPerLine;
                                const std::size_t baseIndex = static_cast<std::size_t>(row) * frame.Width;
                                for (int col = 0; col < frame.Width; ++col)
                                {
                                        const auto value = static_cast<double>(source[baseIndex + static_cast<std::size_t>(col)]);
                                        destRow[col] = mapValue(value);
                                }
                        }
                        break;
                }
                default:
                        image.fill(0);
                        break;
                }
        }
        else
        {
                image = QImage(frame.Width, frame.Height, QImage::Format_RGB888);
                if (image.isNull())
                {
                        return image;
                }

                bool filledFromSourceImage = false;
                if (frame.SourceImage)
                {
                        QMutexLocker locker(&m_cacheMutex);
                        const auto* rgbData = static_cast<const Uint8*>(
                                frame.SourceImage->getOutputData(24, frame.FrameIndex, 0));
                        if (rgbData)
                        {
                                const std::size_t bytesPerLine = static_cast<std::size_t>(frame.Width) * 3u;
                                for (int row = 0; row < frame.Height; ++row)
                                {
                                        std::memcpy(image.scanLine(row),
                                                rgbData + static_cast<std::size_t>(row) * bytesPerLine,
                                                bytesPerLine);
                                }
                                frame.SourceImage->deleteOutputData();
                                filledFromSourceImage = true;
                        }
                }

                if (!filledFromSourceImage && !frame.Data.isEmpty())
                {
                        const std::size_t bytesPerLine = static_cast<std::size_t>(frame.Width)
                                * static_cast<std::size_t>(frame.SamplesPerPixel);
                        for (int row = 0; row < frame.Height; ++row)
                        {
                                std::memcpy(image.scanLine(row),
                                        frame.Data.constData() + static_cast<qint64>(row) * bytesPerLine,
                                        bytesPerLine);
                        }
                }
        }

        if (state.InvertColors)
        {
                image.invertPixels(QImage::InvertRgb);
        }

        if (state.FlipHorizontal || state.FlipVertical)
        {
                image = image.mirrored(state.FlipHorizontal, state.FlipVertical);
        }

        const int rotationSteps = ((state.RotationSteps % 4) + 4) % 4;
        if (rotationSteps != 0)
        {
                QTransform transform;
                transform.rotate(90.0 * rotationSteps);
                image = image.transformed(transform, Qt::FastTransformation);
        }

        return image;
}

std::shared_ptr<asclepios::gui::Widget2D::DcmtkImagePresenter> asclepios::gui::Widget2D::loadFramesWithDcmtk(
        asclepios::core::Series* t_series, asclepios::core::Image* t_image)
{
        if (!t_series || !t_image)
        {
                return {};
        }

        asclepios::core::SmartDJDecoderRegistration::registerCodecs();
        struct DcmtkCleanup
        {
                ~DcmtkCleanup()
                {
                        asclepios::core::SmartDJDecoderRegistration::cleanup();
                }
        } cleanupGuard;

        QElapsedTimer timer;
        timer.start();
        auto presenter = DcmtkImagePresenter::load(t_series, t_image);
        const qint64 elapsed = timer.elapsed();
        if (presenter)
        {
                presenter->setDecodingDurationMs(elapsed);
        }
        qCInfo(lcWidget2D) << "[Telemetry] DCMTK frame decoding finished" << "elapsedMs" << elapsed;
        return presenter;
}

bool asclepios::gui::Widget2D::startDcmtkRendering()
{
        qCInfo(lcWidget2D) << "Starting DCMTK-based 2D rendering prototype.";
        try
        {
                if (m_framePrefetchFuture.isRunning())
                {
                        m_framePrefetchFuture.cancel();
                        m_framePrefetchFuture.waitForFinished();
                }
                m_framePrefetchFuture = {};
                if (m_framePrefetchWatcher)
                {
                        m_framePrefetchWatcher.reset();
                }

                const auto expectedFrames = m_image->getIsMultiFrame()
                        ? m_image->getNumberOfFrames()
                        : static_cast<int>(m_series->getSingleFrameImages().size());
                qCInfo(lcWidget2D)
                        << "Render requested. Multi-frame:" << m_image->getIsMultiFrame()
                        << "expected frames:" << expectedFrames
                        << "series UID:" << QString::fromStdString(m_series->getUID())
                        << "series index:" << m_series->getIndex()
                        << "image SOP UID:" << QString::fromStdString(m_image->getSOPInstanceUID())
                        << "image index:" << m_image->getIndex()
                        << "path:" << QString::fromStdString(m_image->getImagePath());

                ensureImageLabel();
                hideDcmtkOverlay();
                if (m_errorLabel)
                {
                        m_errorLabel->hide();
                }
                if (m_imageLabel)
                {
                        m_imageLabel->clear();
                        m_imageLabel->hide();
                }
                if (m_tabWidget)
                {
                        m_tabWidget->setAcceptDrops(false);
                }

                if (!m_imageLoadWatcher)
                {
                        m_imageLoadWatcher = std::make_unique<QFutureWatcher<std::shared_ptr<DcmtkImagePresenter>>>(this);
                        Q_UNUSED(connect(m_imageLoadWatcher.get(),
                                &QFutureWatcher<std::shared_ptr<DcmtkImagePresenter>>::finished,
                                this, &Widget2D::onImagesLoaded));
                }

                if (m_scroll)
                {
                        m_scroll->hide();
                        m_scroll->setValue(0);
                        m_scroll->setMaximum(0);
                }

                startLoadingAnimation();

                m_isImageLoaded = false;
                m_dcmtkRenderingActive = false;
                m_dcmtkPresenter.reset();
                m_presentationState = {};
                m_currentFrameIndex = 0;
                m_cachedFrame = {};
                m_displayZoomFactor = 1.0;
                m_manualZoomFactor = 1.0;
                m_fitToWindowEnabled = false;
                m_windowLevelDragging = false;
                m_scrollDragging = false;
                m_zoomDragging = false;
                m_panDragging = false;
                m_scrollDragAccumulator = 0.0;
                resetPanOffset();
                m_initialWindowCenter = 0.0;
                m_initialWindowWidth = 1.0;
                m_reportedFirstFrame = false;
                m_firstFrameTimer.restart();
                m_frameLoadTimer.restart();
                m_imageLoadFuture = QtConcurrent::run(loadFramesWithDcmtk, m_series, m_image);
                m_imageLoadWatcher->setFuture(m_imageLoadFuture);
                updateActiveToolUi();
                qCInfo(lcWidget2D)
                        << "QtConcurrent::run dispatched for DCMTK pipeline. Running:" << m_imageLoadFuture.isRunning();
                return true;
        }
        catch (const std::exception& ex)
        {
                handleDcmtkFailure(QString::fromUtf8(ex.what()));
        }
        catch (...)
        {
                handleDcmtkFailure({});
        }

        return false;
}

void asclepios::gui::Widget2D::ensureImageLabel()
{
        if (!m_imageLabel)
        {
                m_imageLabel = new QLabel(this);
                m_imageLabel->setAlignment(Qt::AlignCenter);
                m_imageLabel->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
                m_imageLabel->setMinimumSize(QSize(1, 1));
                m_imageLabel->setStyleSheet(QStringLiteral("background-color: black;"));
                m_imageLabel->setMouseTracking(true);
                m_imageLabel->hide();
        }
        if (m_imageLabel)
        {
                m_imageLabel->removeEventFilter(this);
                m_imageLabel->installEventFilter(this);
        }
        ensureOverlayWidget();
        setCursorForActiveTool();
}

void asclepios::gui::Widget2D::ensureOverlayWidget()
{
        if (!m_imageLabel)
        {
                return;
        }
        if (!m_overlayWidget)
        {
                m_overlayWidget = new DcmtkOverlayWidget(m_imageLabel);
                m_overlayWidget->hide();
        }
        else if (m_overlayWidget->parentWidget() != m_imageLabel)
        {
                m_overlayWidget->setParent(m_imageLabel);
        }
}

void asclepios::gui::Widget2D::refreshDisplayedFrame(const bool t_updateOverlay)
{
        if (!m_imageLabel || m_cachedFrame.isNull())
        {
                return;
        }

        const QSize frameSize = m_cachedFrame.size();
        if (frameSize.isEmpty())
        {
                m_imageLabel->clear();
                return;
        }

        const double clampedZoom = std::clamp(m_manualZoomFactor, 0.1, 8.0);
        m_manualZoomFactor = clampedZoom;

        double effectiveZoom = clampedZoom;
        if (m_fitToWindowEnabled)
        {
                const QSize labelSize = m_imageLabel->size();
                if (labelSize.width() > 0 && labelSize.height() > 0)
                {
                        const double widthScale = static_cast<double>(labelSize.width())
                                / static_cast<double>(frameSize.width());
                        const double heightScale = static_cast<double>(labelSize.height())
                                / static_cast<double>(frameSize.height());
                        const double fitScale = std::min(widthScale, heightScale);
                        if (fitScale > 0.0 && std::isfinite(fitScale))
                        {
                                effectiveZoom = fitScale;
                        }
                }
        }

        m_displayZoomFactor = effectiveZoom;

        QPixmap pixmap = QPixmap::fromImage(m_cachedFrame);
        const int targetWidth = std::max(1, static_cast<int>(std::lround(static_cast<double>(frameSize.width()) * effectiveZoom)));
        const int targetHeight = std::max(1, static_cast<int>(std::lround(static_cast<double>(frameSize.height()) * effectiveZoom)));
        const QSize targetSize(targetWidth, targetHeight);
        if (targetSize != pixmap.size())
        {
                pixmap = pixmap.scaled(targetSize, Qt::KeepAspectRatio, Qt::SmoothTransformation);
        }
        if (m_imageLabel)
        {
                if (!m_fitToWindowEnabled)
                {
                        const QSize labelSize = m_imageLabel->size();
                        if (labelSize.isValid())
                        {
                                clampPanOffset(labelSize, pixmap.size());
                                QPixmap displayPixmap(labelSize);
                                displayPixmap.fill(Qt::black);
                                QPainter painter(&displayPixmap);
                                const QPointF baseOffset(
                                        static_cast<double>(labelSize.width() - pixmap.width()) / 2.0,
                                        static_cast<double>(labelSize.height() - pixmap.height()) / 2.0);
                                const QPointF topLeft = baseOffset + m_panOffset;
                                painter.drawPixmap(topLeft, pixmap);
                                painter.end();
                                m_imageLabel->setPixmap(displayPixmap);
                        }
                        else
                        {
                                m_imageLabel->setPixmap(pixmap);
                        }
                }
                else
                {
                        if (!m_panOffset.isNull())
                        {
                                resetPanOffset();
                        }
                        m_imageLabel->setPixmap(pixmap);
                }
        }
        if (!m_imageLabel->isVisible())
        {
                m_imageLabel->show();
        }
        if (t_updateOverlay)
        {
                updateDcmtkOverlay(m_cachedFrame, m_currentFrameIndex);
        }
}

void asclepios::gui::Widget2D::applyLoadedFrame(const int t_index)
{
        if (!m_dcmtkRenderingActive || !m_dcmtkPresenter || !m_dcmtkPresenter->isValid() || !m_imageLabel)
        {
                return;
        }

        const int maxIndex = m_dcmtkPresenter->frameCount() - 1;
        if (maxIndex < 0)
        {
                return;
        }

        const int clampedIndex = std::clamp(t_index, 0, maxIndex);
        m_currentFrameIndex = clampedIndex;
        const QImage frameImage = m_dcmtkPresenter->renderFrame(clampedIndex, m_presentationState);
        if (frameImage.isNull())
        {
                m_cachedFrame = {};
                m_displayZoomFactor = 1.0;
                m_imageLabel->clear();
                hideDcmtkOverlay();
                return;
        }

        m_cachedFrame = frameImage;
        refreshDisplayedFrame(false);
        updateDcmtkOverlay(frameImage, clampedIndex);
        if (!m_reportedFirstFrame && m_firstFrameTimer.isValid())
        {
                const qint64 elapsedToFirstFrame = m_firstFrameTimer.elapsed();
                const QString seriesUid = (m_series)
                        ? QString::fromStdString(m_series->getUID())
                        : QStringLiteral("n/a");
                qCInfo(lcWidget2D)
                        << "[Telemetry] Time to first frame"
                        << "elapsedMs" << elapsedToFirstFrame
                        << "seriesUid" << seriesUid
                        << "frameIndex" << clampedIndex;
                m_reportedFirstFrame = true;
        }
}

void asclepios::gui::Widget2D::positionLoadingAnimation()
{
        if (!m_loadingAnimation)
        {
                return;
        }

        const QRect targetRect = (m_imageLabel && !m_imageLabel->geometry().isEmpty())
                ? m_imageLabel->geometry()
                : rect();
        const QSize overlaySize = m_loadingAnimation->size();
        const QPoint topLeft = targetRect.center() - QPoint(overlaySize.width() / 2, overlaySize.height() / 2);
        m_loadingAnimation->move(topLeft);
}

void asclepios::gui::Widget2D::updateDcmtkOverlay(const QImage& t_frameImage, int t_frameIndex)
{
        if (!m_dcmtkRenderingActive)
        {
                return;
        }
        ensureOverlayWidget();
        if (!m_overlayWidget || !m_imageLabel)
        {
                return;
        }

        const QString seriesNumber = (m_series)
                ? QString::fromStdString(m_series->getNumber())
                : QString();
        const int frameCount = (m_dcmtkPresenter)
                ? std::max(m_dcmtkPresenter->frameCount(), 0)
                : 0;
        m_overlayWidget->setSeriesInformation(seriesNumber, t_frameIndex, frameCount);

        double windowCenter = m_presentationState.WindowCenter;
        double windowWidth = m_presentationState.WindowWidth;
        if (m_dcmtkPresenter)
        {
                const auto initialState = m_dcmtkPresenter->initialState();
                if (windowWidth <= 0.0)
                {
                        windowWidth = initialState.WindowWidth;
                        windowCenter = initialState.WindowCenter;
                }
        }
        m_overlayWidget->setWindowLevel(windowCenter, windowWidth);

        double zoomFactor = (m_displayZoomFactor > 0.0 && std::isfinite(m_displayZoomFactor))
                ? m_displayZoomFactor
                : m_manualZoomFactor;
        m_overlayWidget->setZoom(zoomFactor);
        m_overlayWidget->setToolName(toolDisplayName(m_activeTool));
        m_overlayWidget->setGeometry(m_imageLabel->rect());
        m_overlayWidget->raise();
        m_overlayWidget->show();
        m_overlayWidget->update();
}

void asclepios::gui::Widget2D::hideDcmtkOverlay()
{
        if (!m_overlayWidget)
        {
                return;
        }
        m_overlayWidget->clear();
        m_overlayWidget->hide();
        m_windowLevelDragging = false;
}

void asclepios::gui::Widget2D::keyPressEvent(QKeyEvent* t_event)
{
        if (!t_event)
        {
                QWidget::keyPressEvent(t_event);
                return;
        }

        bool handled = false;
        if (!t_event->modifiers())
        {
                switch (t_event->key())
                {
                case Qt::Key_B:
                        setActiveTool(InteractionTool::scroll);
                        handled = true;
                        break;
                case Qt::Key_W:
                        setActiveTool(InteractionTool::window);
                        handled = true;
                        break;
                case Qt::Key_Z:
                        setActiveTool(InteractionTool::zoom);
                        handled = true;
                        break;
                case Qt::Key_M:
                        setActiveTool(InteractionTool::pan);
                        handled = true;
                        break;
                default:
                        break;
                }
        }

        if (handled)
        {
                t_event->accept();
                return;
        }
        QWidget::keyPressEvent(t_event);
}

void asclepios::gui::Widget2D::updateActiveToolUi()
{
        setCursorForActiveTool();
        updateToolOverlay();
}

void asclepios::gui::Widget2D::updateToolOverlay()
{
        if (!m_dcmtkRenderingActive)
        {
                return;
        }
        ensureOverlayWidget();
        if (!m_overlayWidget)
        {
                return;
        }
        m_overlayWidget->setToolName(toolDisplayName(m_activeTool));
        m_overlayWidget->update();
}

QString asclepios::gui::Widget2D::toolDisplayName(const InteractionTool t_tool) const
{
        switch (t_tool)
        {
        case InteractionTool::scroll:
                return tr("Scroll");
        case InteractionTool::window:
                return tr("Window");
        case InteractionTool::zoom:
                return tr("Zoom");
        case InteractionTool::pan:
                return tr("Pan");
        default:
                return {};
        }
}

void asclepios::gui::Widget2D::resetPanOffset()
{
        m_panOffset = {};
}

void asclepios::gui::Widget2D::clampPanOffset(const QSize& labelSize, const QSize& targetSize)
{
        if (labelSize.isEmpty())
        {
                return;
        }

        const QPointF baseOffset(
                static_cast<double>(labelSize.width() - targetSize.width()) / 2.0,
                static_cast<double>(labelSize.height() - targetSize.height()) / 2.0);
        QPointF desiredTopLeft = baseOffset + m_panOffset;

        if (targetSize.width() <= labelSize.width())
        {
                desiredTopLeft.setX(baseOffset.x());
        }
        else
        {
                const double minX = static_cast<double>(labelSize.width() - targetSize.width());
                const double maxX = 0.0;
                desiredTopLeft.setX(std::clamp(desiredTopLeft.x(), minX, maxX));
        }

        if (targetSize.height() <= labelSize.height())
        {
                desiredTopLeft.setY(baseOffset.y());
        }
        else
        {
                const double minY = static_cast<double>(labelSize.height() - targetSize.height());
                const double maxY = 0.0;
                desiredTopLeft.setY(std::clamp(desiredTopLeft.y(), minY, maxY));
        }

        m_panOffset = desiredTopLeft - baseOffset;
}

void asclepios::gui::Widget2D::setCursorForActiveTool(const bool t_handClosed)
{
        Qt::CursorShape shape = Qt::ArrowCursor;
        switch (m_activeTool)
        {
        case InteractionTool::scroll:
                shape = Qt::ArrowCursor;
                break;
        case InteractionTool::window:
                shape = Qt::CrossCursor;
                break;
        case InteractionTool::zoom:
                shape = Qt::SizeVerCursor;
                break;
        case InteractionTool::pan:
                shape = t_handClosed ? Qt::ClosedHandCursor : Qt::OpenHandCursor;
                break;
        default:
                shape = Qt::ArrowCursor;
                break;
        }

        setCursor(shape);
        if (m_imageLabel)
        {
                m_imageLabel->setCursor(shape);
        }
}

void asclepios::gui::Widget2D::adjustFrameByStep(const int t_step)
{
        if (!m_dcmtkRenderingActive || !m_dcmtkPresenter || t_step == 0)
        {
                return;
        }
        const int frameCount = std::max(m_dcmtkPresenter->frameCount(), 0);
        if (frameCount <= 0)
        {
                return;
        }
        const int targetIndex = std::clamp(m_currentFrameIndex + t_step, 0, frameCount - 1);
        if (targetIndex == m_currentFrameIndex)
        {
                return;
        }
        if (m_scroll)
        {
                const QSignalBlocker blocker(m_scroll);
                m_scroll->setValue(targetIndex);
        }
        applyLoadedFrame(targetIndex);
}

void asclepios::gui::Widget2D::resetWindowLevel()
{
        if (!m_dcmtkPresenter)
        {
                return;
        }
        const auto initialState = m_dcmtkPresenter->initialState();
        m_presentationState.WindowCenter = initialState.WindowCenter;
        m_presentationState.WindowWidth = initialState.WindowWidth;
        applyLoadedFrame(m_currentFrameIndex);
}

void asclepios::gui::Widget2D::handleDcmtkFailure(const QString& t_reason)
{
        stopLoadingAnimation();
        if (m_framePrefetchFuture.isRunning())
        {
                m_framePrefetchFuture.cancel();
                m_framePrefetchFuture.waitForFinished();
        }
        m_framePrefetchFuture = {};
        if (m_framePrefetchWatcher)
        {
                m_framePrefetchWatcher.reset();
        }
        if (!t_reason.isEmpty())
        {
                qCWarning(lcWidget2D) << "DCMTK prototype rendering failed:" << t_reason;
        }
        else
        {
                qCWarning(lcWidget2D) << "DCMTK prototype rendering failed.";
        }

        m_dcmtkRenderingActive = false;
        m_dcmtkPresenter.reset();
        m_presentationState = {};
        m_cachedFrame = {};
        m_displayZoomFactor = 1.0;
        m_manualZoomFactor = 1.0;
        m_fitToWindowEnabled = false;
        m_windowLevelDragging = false;
        m_initialWindowCenter = 0.0;
        m_initialWindowWidth = 1.0;
        m_reportedFirstFrame = false;
        m_firstFrameTimer.invalidate();
        m_frameLoadTimer.invalidate();
        hideDcmtkOverlay();
        if (m_imageLabel)
        {
                m_imageLabel->hide();
                m_imageLabel->clear();
        }
        if (m_tabWidget)
        {
                m_tabWidget->setAcceptDrops(true);
        }
        if (m_scroll)
        {
                m_scroll->hide();
                m_scroll->setValue(0);
                m_scroll->setMaximum(0);
        }
        m_imageLoadFuture = {};
        if (m_errorLabel)
        {
                const auto reason = t_reason.trimmed();
                const auto message = reason.isEmpty()
                        ? tr("Unable to render the selected image.")
                        : tr("Unable to render the selected image.\n%1").arg(reason);
                m_errorLabel->setText(message);
                m_errorLabel->setToolTip(reason);
                m_errorLabel->show();
        }
}

void asclepios::gui::Widget2D::onImagesLoaded()
{
        if (!m_imageLoadWatcher)
        {
                return;
        }

        std::shared_ptr<DcmtkImagePresenter> presenter;
        try
        {
                presenter = m_imageLoadWatcher->result();
        }
        catch (const std::exception& ex)
        {
                handleDcmtkFailure(QString::fromUtf8(ex.what()));
                return;
        }
        catch (...)
        {
                handleDcmtkFailure({});
                return;
        }

        if (!presenter || !presenter->isValid())
        {
                stopLoadingAnimation();
                handleDcmtkFailure(tr("No frames decoded from the selected dataset."));
                return;
        }

        m_dcmtkPresenter = std::move(presenter);
        m_presentationState = m_dcmtkPresenter->initialState();
        m_dcmtkRenderingActive = true;
        m_isImageLoaded = true;
        if (m_frameLoadTimer.isValid())
        {
                qCInfo(lcWidget2D)
                        << "[Telemetry] QtConcurrent future completed"
                        << "elapsedMs" << m_frameLoadTimer.elapsed();
                m_frameLoadTimer.invalidate();
        }
        qCInfo(lcWidget2D)
                << "[Telemetry] DCMTK presenter stats"
                << "frames" << m_dcmtkPresenter->frameCount()
                << "allocatedBytes" << static_cast<unsigned long long>(m_dcmtkPresenter->totalAllocatedFrameBytes())
                << "decodingMs" << m_dcmtkPresenter->decodingDurationMs();
        if (m_tabWidget)
        {
                m_tabWidget->setAcceptDrops(true);
        }
        if (m_errorLabel)
        {
                m_errorLabel->hide();
        }
        disconnectScroll();
        if (m_scroll)
        {
                const int maxIndex = std::max(m_dcmtkPresenter->frameCount() - 1, 0);
                const int value = std::clamp(m_imageIndex, 0, maxIndex);
                setSliderValues(0, maxIndex, value);
                m_scroll->setVisible(maxIndex > 0);
                Q_UNUSED(connect(m_scroll, &QScrollBar::valueChanged,
                        this, &Widget2D::onChangeImage));
        }
        const int targetIndex = (m_scroll) ? m_scroll->value() : 0;
        ensureOverlayWidget();
        if (m_overlayWidget)
        {
                const auto* metadata = (m_series)
                        ? m_series->getMetadataForSeries()
                        : nullptr;
                m_overlayWidget->setMetadata(metadata);
        }
        m_manualZoomFactor = 1.0;
        m_cachedFrame = {};
        m_displayZoomFactor = 1.0;
        m_fitToWindowEnabled = false;
        m_windowLevelDragging = false;
        m_initialWindowCenter = m_presentationState.WindowCenter;
        m_initialWindowWidth = std::max(m_presentationState.WindowWidth, 1.0);
        applyLoadedFrame(targetIndex);
        if (m_dcmtkPresenter && m_dcmtkPresenter->frameCount() > 1)
        {
                if (!m_framePrefetchWatcher)
                {
                        m_framePrefetchWatcher = std::make_unique<QFutureWatcher<void>>(this);
                        Q_UNUSED(connect(m_framePrefetchWatcher.get(), &QFutureWatcher<void>::finished,
                                this, &Widget2D::onFramePrefetchFinished));
                }

                auto presenterRef = m_dcmtkPresenter;
                m_framePrefetchFuture = QtConcurrent::run([presenterRef]()
                {
                        try
                        {
                                presenterRef->prefetchAllFrames();
                        }
                        catch (const std::exception& ex)
                        {
                                qCWarning(lcWidget2D)
                                        << "Background prefetch failed:" << ex.what();
                        }
                        catch (...)
                        {
                                qCWarning(lcWidget2D)
                                        << "Background prefetch failed due to an unknown error.";
                        }
                });
                m_framePrefetchWatcher->setFuture(m_framePrefetchFuture);
        }
        else
        {
                stopLoadingAnimation();
        }
        m_imageLoadFuture = {};
        qCInfo(lcWidget2D) << "DCMTK prototype rendering completed." << "frames:"
                           << m_dcmtkPresenter->frameCount();
}

void asclepios::gui::Widget2D::onFramePrefetchFinished()
{
        stopLoadingAnimation();
        m_framePrefetchFuture = {};
        if (m_dcmtkPresenter)
        {
                qCInfo(lcWidget2D)
                        << "[Telemetry] DCMTK prefetch completed"
                        << "frames" << m_dcmtkPresenter->frameCount()
                        << "allocatedBytes" << static_cast<unsigned long long>(m_dcmtkPresenter->totalAllocatedFrameBytes())
                        << "decodingMs" << m_dcmtkPresenter->decodingDurationMs();
        }
}

bool asclepios::gui::Widget2D::eventFilter(QObject* t_watched, QEvent* t_event)
{
        if (t_watched == m_imageLabel && t_event)
        {
                const bool renderActive = m_dcmtkRenderingActive && m_dcmtkPresenter && m_dcmtkPresenter->isValid();
                switch (t_event->type())
                {
                case QEvent::Wheel:
                {
                        if (!renderActive)
                        {
                                break;
                        }
                        auto* wheelEvent = static_cast<QWheelEvent*>(t_event);
                        const QPoint angleDelta = wheelEvent->angleDelta();
                        if (wheelEvent->modifiers().testFlag(Qt::ControlModifier))
                        {
                                double relativeStep = 0.0;
                                if (angleDelta.y() != 0)
                                {
                                        relativeStep = static_cast<double>(angleDelta.y()) / 120.0;
                                }
                                else if (angleDelta.x() != 0)
                                {
                                        relativeStep = static_cast<double>(angleDelta.x()) / 120.0;
                                }
                                if (relativeStep == 0.0)
                                {
                                        relativeStep = (angleDelta.y() > 0 || angleDelta.x() > 0)
                                                ? 1.0
                                                : ((angleDelta.y() < 0 || angleDelta.x() < 0) ? -1.0 : 0.0);
                                }
                                if (relativeStep != 0.0)
                                {
                                        const double scaleStep = 0.1;
                                        m_fitToWindowEnabled = false;
                                        m_manualZoomFactor = std::clamp(
                                                m_manualZoomFactor + scaleStep * relativeStep,
                                                0.1,
                                                8.0);
                                        refreshDisplayedFrame(true);
                                }
                        }
                        else
                        {
                                int steps = 0;
                                if (angleDelta.y() != 0)
                                {
                                        steps = angleDelta.y() / 120;
                                        if (steps == 0)
                                        {
                                                steps = angleDelta.y() > 0 ? 1 : -1;
                                        }
                                }
                                else if (angleDelta.x() != 0)
                                {
                                        steps = angleDelta.x() / 120;
                                        if (steps == 0)
                                        {
                                                steps = angleDelta.x() > 0 ? 1 : -1;
                                        }
                                }
                                if (steps != 0)
                                {
                                        adjustFrameByStep(-steps);
                                }
                        }
                        wheelEvent->accept();
                        return true;
                }
                case QEvent::MouseButtonPress:
                {
                        if (!renderActive)
                        {
                                break;
                        }
                        auto* mouseEvent = static_cast<QMouseEvent*>(t_event);
                        if (mouseEvent->button() == Qt::LeftButton)
                        {
                                m_lastMousePosition = mouseEvent->pos();
                                switch (m_activeTool)
                                {
                                case InteractionTool::scroll:
                                        m_scrollDragging = true;
                                        m_scrollDragAccumulator = 0.0;
                                        mouseEvent->accept();
                                        return true;
                                case InteractionTool::window:
                                {
                                        m_windowLevelDragging = true;
                                        const auto initialState = m_dcmtkPresenter->initialState();
                                        if (m_presentationState.WindowWidth <= 0.0)
                                        {
                                                m_presentationState.WindowWidth = initialState.WindowWidth;
                                                m_presentationState.WindowCenter = initialState.WindowCenter;
                                        }
                                        m_initialWindowCenter = m_presentationState.WindowCenter;
                                        m_initialWindowWidth = std::max(m_presentationState.WindowWidth, 1.0);
                                        mouseEvent->accept();
                                        return true;
                                }
                                case InteractionTool::zoom:
                                        m_zoomDragging = true;
                                        m_fitToWindowEnabled = false;
                                        mouseEvent->accept();
                                        return true;
                                case InteractionTool::pan:
                                        m_panDragging = true;
                                        m_fitToWindowEnabled = false;
                                        setCursorForActiveTool(true);
                                        mouseEvent->accept();
                                        return true;
                                default:
                                        break;
                                }
                        }
                        if (mouseEvent->button() == Qt::MiddleButton)
                        {
                                m_fitToWindowEnabled = false;
                                m_manualZoomFactor = 1.0;
                                resetPanOffset();
                                refreshDisplayedFrame(true);
                                mouseEvent->accept();
                                return true;
                        }
                        break;
                }
                case QEvent::MouseMove:
                {
                        auto* mouseEvent = static_cast<QMouseEvent*>(t_event);
                        if (!renderActive)
                        {
                                break;
                        }
                        if (m_scrollDragging)
                        {
                                const QPoint delta = mouseEvent->pos() - m_lastMousePosition;
                                m_scrollDragAccumulator += static_cast<double>(delta.y());
                                constexpr double pixelsPerStep = 5.0;
                                const int steps = static_cast<int>(m_scrollDragAccumulator / pixelsPerStep);
                                if (steps != 0)
                                {
                                        adjustFrameByStep(steps);
                                        m_scrollDragAccumulator -= static_cast<double>(steps) * pixelsPerStep;
                                }
                                m_lastMousePosition = mouseEvent->pos();
                                mouseEvent->accept();
                                return true;
                        }
                        if (m_windowLevelDragging && m_activeTool == InteractionTool::window)
                        {
                                const QPoint delta = mouseEvent->pos() - m_lastMousePosition;
                                const double referenceWidth = std::max(m_initialWindowWidth, 1.0);
                                const double widthChange = static_cast<double>(delta.x()) * (referenceWidth / 300.0);
                                const double centerChange = static_cast<double>(-delta.y()) * (referenceWidth / 300.0);
                                m_presentationState.WindowWidth = std::max(1.0, m_initialWindowWidth + widthChange);
                                m_presentationState.WindowCenter = m_initialWindowCenter + centerChange;
                                applyLoadedFrame(m_currentFrameIndex);
                                m_lastMousePosition = mouseEvent->pos();
                                mouseEvent->accept();
                                return true;
                        }
                        if (m_zoomDragging)
                        {
                                const QPoint delta = mouseEvent->pos() - m_lastMousePosition;
                                if (delta.y() != 0)
                                {
                                        const double sensitivity = 0.01;
                                        const double factor = 1.0 - sensitivity * static_cast<double>(delta.y());
                                        if (factor > 0.0)
                                        {
                                                m_manualZoomFactor = std::clamp(m_manualZoomFactor * factor, 0.1, 8.0);
                                                refreshDisplayedFrame(true);
                                        }
                                }
                                m_lastMousePosition = mouseEvent->pos();
                                mouseEvent->accept();
                                return true;
                        }
                        if (m_panDragging)
                        {
                                const QPoint delta = mouseEvent->pos() - m_lastMousePosition;
                                m_panOffset += QPointF(delta);
                                m_fitToWindowEnabled = false;
                                refreshDisplayedFrame(true);
                                m_lastMousePosition = mouseEvent->pos();
                                mouseEvent->accept();
                                return true;
                        }
                        break;
                }
                case QEvent::MouseButtonRelease:
                {
                        auto* mouseEvent = static_cast<QMouseEvent*>(t_event);
                        if (!mouseEvent)
                        {
                                break;
                        }
                        if (mouseEvent->button() != Qt::LeftButton)
                        {
                                break;
                        }
                        bool handled = false;
                        if (m_windowLevelDragging)
                        {
                                m_windowLevelDragging = false;
                                handled = true;
                        }
                        if (m_scrollDragging)
                        {
                                m_scrollDragging = false;
                                m_scrollDragAccumulator = 0.0;
                                handled = true;
                        }
                        if (m_zoomDragging)
                        {
                                m_zoomDragging = false;
                                handled = true;
                        }
                        if (m_panDragging)
                        {
                                m_panDragging = false;
                                handled = true;
                                setCursorForActiveTool();
                        }
                        if (handled)
                        {
                                mouseEvent->accept();
                                return true;
                        }
                        break;
                }
                case QEvent::MouseButtonDblClick:
                {
                        if (!renderActive)
                        {
                                break;
                        }
                        auto* mouseEvent = static_cast<QMouseEvent*>(t_event);
                        if (mouseEvent->button() == Qt::LeftButton
                                && mouseEvent->modifiers().testFlag(Qt::ControlModifier)
                                && m_activeTool == InteractionTool::window)
                        {
                                resetWindowLevel();
                                mouseEvent->accept();
                                return true;
                        }
                        if (mouseEvent->button() == Qt::MiddleButton)
                        {
                                m_manualZoomFactor = 1.0;
                                resetPanOffset();
                                refreshDisplayedFrame(true);
                                mouseEvent->accept();
                                return true;
                        }
                        break;
                }
                default:
                        break;
                }
        }
        return WidgetBase::eventFilter(t_watched, t_event);
}


asclepios::gui::Widget2D::Widget2D(QWidget* parent)
        : WidgetBase(parent)
{
        initData();
        initView();
        createConnections();
        m_tabWidget = parent;
        updateActiveToolUi();
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::initView()
{
        if (layout())
        {
                delete layout();
        }
        m_ui.setupUi(this);
        auto* containerLayout = new QHBoxLayout(this);
        containerLayout->setMargin(0);
        containerLayout->setSpacing(0);
        setLayout(containerLayout);
        ensureImageLabel();
        if (m_imageLabel && layout()->indexOf(m_imageLabel) == -1)
        {
                layout()->addWidget(m_imageLabel);
        }
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
        if (m_imageLabel && m_vtkEvents)
        {
                m_imageLabel->installEventFilter(m_vtkEvents.get());
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::initData()
{
        disconnectScroll();
        if (auto* widgetLayout = layout())
        {
                if (m_scroll)
                {
                        widgetLayout->removeWidget(m_scroll);
                }
                if (m_imageLabel)
                {
                        widgetLayout->removeWidget(m_imageLabel);
                }
                if (m_errorLabel)
                {
                        widgetLayout->removeWidget(m_errorLabel);
                }
        }
        delete m_scroll;
        m_scroll = new QScrollBar(Qt::Vertical, this);
        setScrollStyle();
        if (!m_vtkEvents)
        {
                m_vtkEvents = std::make_unique<vtkEventFilter>(this);
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::render()
{
        m_renderAbortedDueToMissingContext = false;
        if (!m_series || !m_image)
        {
                const auto trigger = m_lastRenderRequestSource.isEmpty()
                        ? QStringLiteral("unknown")
                        : m_lastRenderRequestSource;
                qCWarning(lcWidget2D)
                        << "Render aborted due to missing series/image context."
                        << "seriesMissing" << (m_series == nullptr)
                        << "imageMissing" << (m_image == nullptr)
                        << "trigger" << trigger
                        << "seriesPtr" << static_cast<const void*>(m_series)
                        << "imagePtr" << static_cast<const void*>(m_image);
                m_isImageLoaded = false;
                m_renderAbortedDueToMissingContext = true;
                return;
        }

        if (!startDcmtkRendering())
        {
                qCWarning(lcWidget2D) << "DCMTK rendering path failed to start."
                                      << "series" << static_cast<const void*>(m_series)
                                      << "image" << static_cast<const void*>(m_image);
        }
}

void asclepios::gui::Widget2D::waitForPendingTasks() const
{
        if (m_imageLoadWatcher)
        {
                m_imageLoadWatcher->waitForFinished();
        }
        if (m_framePrefetchFuture.isRunning())
        {
                const_cast<QFuture<void>&>(m_framePrefetchFuture).waitForFinished();
        }
}

void asclepios::gui::Widget2D::setFitToWindowEnabled(const bool t_enabled)
{
        if (m_fitToWindowEnabled == t_enabled)
        {
                return;
        }

        m_fitToWindowEnabled = t_enabled;
        if (m_fitToWindowEnabled)
        {
                resetPanOffset();
        }
        if (m_dcmtkRenderingActive && m_dcmtkPresenter && m_dcmtkPresenter->isValid())
        {
                refreshDisplayedFrame(true);
        }
}

void asclepios::gui::Widget2D::setActiveTool(const InteractionTool t_tool)
{
        if (m_activeTool == t_tool)
        {
                return;
        }

        m_activeTool = t_tool;
        m_windowLevelDragging = false;
        m_scrollDragging = false;
        m_zoomDragging = false;
        m_panDragging = false;
        m_scrollDragAccumulator = 0.0;
        updateActiveToolUi();
        emit activeToolChanged(m_activeTool);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::createConnections()
{
        setFocusPolicy(Qt::FocusPolicy::WheelFocus);
        if (m_imageLabel && m_vtkEvents)
        {
                m_imageLabel->installEventFilter(m_vtkEvents.get());
                Q_UNUSED(connect(m_vtkEvents.get(),
                        &vtkEventFilter::activateWidget,
                        this, &Widget2D::onActivateWidget));
                Q_UNUSED(connect(m_vtkEvents.get(),
                        &vtkEventFilter::setMaximized,
                        this, &Widget2D::onSetMaximized));
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::resetView()
{
        resetScroll();
        if (m_errorLabel)
        {
                m_errorLabel->hide();
        }
        if (m_imageLabel)
        {
                m_imageLabel->hide();
                m_imageLabel->clear();
        }
        m_dcmtkPresenter.reset();
        m_presentationState = {};
        m_dcmtkRenderingActive = false;
        m_currentFrameIndex = 0;
        m_cachedFrame = {};
        m_displayZoomFactor = 1.0;
        m_manualZoomFactor = 1.0;
        m_fitToWindowEnabled = false;
        m_windowLevelDragging = false;
        m_scrollDragging = false;
        m_zoomDragging = false;
        m_panDragging = false;
        m_scrollDragAccumulator = 0.0;
        resetPanOffset();
        m_initialWindowCenter = 0.0;
        m_initialWindowWidth = 1.0;
        hideDcmtkOverlay();
        if (m_imageLoadWatcher && m_imageLoadWatcher->isRunning())
        {
                m_imageLoadWatcher->waitForFinished();
        }
        m_imageLoadFuture = {};
        m_isImageLoaded = false;
        m_image = nullptr;
        m_series = nullptr;
        m_activeTool = InteractionTool::scroll;
        updateActiveToolUi();
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
void asclepios::gui::Widget2D::onApplyTransformation(const transformationType& t_type)
{
        if (m_dcmtkRenderingActive && m_dcmtkPresenter && m_dcmtkPresenter->isValid())
        {
                switch (t_type)
                {
                case transformationType::flipHorizontal:
                        m_presentationState.FlipHorizontal = !m_presentationState.FlipHorizontal;
                        break;
                case transformationType::flipVertical:
                        m_presentationState.FlipVertical = !m_presentationState.FlipVertical;
                        break;
                case transformationType::rotateLeft:
                        m_presentationState.RotationSteps = (m_presentationState.RotationSteps + 3) % 4;
                        break;
                case transformationType::rotateRight:
                        m_presentationState.RotationSteps = (m_presentationState.RotationSteps + 1) % 4;
                        break;
                case transformationType::invert:
                        m_presentationState.InvertColors = !m_presentationState.InvertColors;
                        break;
                default:
                        break;
                }
                applyLoadedFrame(m_currentFrameIndex);
                return;
        }

}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onRefreshScrollValues(asclepios::core::Series* t_series, asclepios::core::Image* t_image)
{
        auto* const study = t_series->getParentObject();
        if (canScrollBeRefreshed(study->getParentObject()->getIndex(),
                study->getIndex(), t_series->getIndex()))
        {
                if (!m_image->getIsMultiFrame())
                {
                        const auto size = static_cast<int>(t_series->getSingleFrameImages().size());
                        const auto value =
                                (t_image->getIndex() <= m_scroll->value()
                                && size > 1 && t_image->getIndex() > 0)
                                ? m_scroll->value() + 1
                                : m_scroll->value();
                        setSliderValues(0, size - 1, value);
                        if (m_dcmtkRenderingActive)
                        {
                                ensureOverlayWidget();
                                if (m_overlayWidget)
                                {
                                        const int frameCount = (m_dcmtkPresenter)
                                                ? std::max(m_dcmtkPresenter->frameCount(), 0)
                                                : size;
                                        const QString seriesNumber = (m_series)
                                                ? QString::fromStdString(m_series->getNumber())
                                                : QString();
                                        m_overlayWidget->setSeriesInformation(seriesNumber, value,
                                                frameCount);
                                }
                        }
                        qCDebug(lcWidget2D)
                                << "Scroll values refreshed from importer. Series index:" << t_series->getIndex()
                                << "Image index:" << t_image->getIndex()
                                << "Current value:" << value;
                }
        }
}

void asclepios::gui::Widget2D::onSetMaximized() const
{
        if(m_tabWidget)
        {
                dynamic_cast<TabWidget*>(m_tabWidget)->onMaximize();
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::closeEvent(QCloseEvent* t_event)
{
        initData();
        initView();
        QWidget::closeEvent(t_event);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::onChangeImage(int t_index)
{
        if (!m_dcmtkRenderingActive)
        {
                qCDebug(lcWidget2D) << "Ignoring scroll request because DCMTK rendering is inactive.";
                return;
        }
        applyLoadedFrame(t_index);
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::connectScroll()
{
        if (m_scroll)
        {
                Q_UNUSED(connect(m_scroll, &QScrollBar::valueChanged,
                        this, &Widget2D::onChangeImage));
        }
}

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::startLoadingAnimation()
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

//-----------------------------------------------------------------------------
void asclepios::gui::Widget2D::disconnectScroll() const
{
        if (m_scroll)
        {
                disconnect(m_scroll, &QScrollBar::valueChanged,
                           this, &Widget2D::onChangeImage);
        }
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

void asclepios::gui::Widget2D::resizeEvent(QResizeEvent* t_event)
{
        QWidget::resizeEvent(t_event);
        positionLoadingAnimation();
        if (m_dcmtkRenderingActive)
        {
                applyLoadedFrame(m_currentFrameIndex);
        }
}

//-----------------------------------------------------------------------------
bool asclepios::gui::Widget2D::canScrollBeRefreshed(const int& t_patientIndex, const int& t_studyIndex,
                                                    const int& t_seriesIndex) const
{
        return m_dcmtkRenderingActive && m_dcmtkPresenter && m_dcmtkPresenter->isValid()
                && t_patientIndex == m_patientIndex && t_studyIndex == m_studyIndex
                && m_seriesIndex == t_seriesIndex;
}
