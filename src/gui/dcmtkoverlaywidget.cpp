#include "dcmtkoverlaywidget.h"

#include <QFile>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QLoggingCategory>
#include <QPainter>

#include <algorithm>
#include <cmath>

#include "utils.h"

Q_LOGGING_CATEGORY(lcDcmtkOverlayWidget, "asclepios.gui.dcmtkoverlay")

using asclepios::core::DicomMetadata;
using asclepios::core::DicomTag;

namespace
{
        constexpr int cornerCount = 4;
}

asclepios::gui::DcmtkOverlayWidget::DcmtkOverlayWidget(QWidget* parent)
        : QWidget(parent)
{
        setAttribute(Qt::WA_TransparentForMouseEvents);
        setAttribute(Qt::WA_NoSystemBackground);
        setAttribute(Qt::WA_TranslucentBackground);
        setAttribute(Qt::WA_OpaquePaintEvent, false);
        loadConfiguration();
}

void asclepios::gui::DcmtkOverlayWidget::setMetadata(const DicomMetadata* t_metadata)
{
        loadConfiguration();
        m_entryTexts.clear();
        populateStaticEntries(t_metadata);
        update();
}

void asclepios::gui::DcmtkOverlayWidget::setSeriesInformation(const QString& t_seriesNumber,
        int t_imageIndex, int t_imageCount)
{
        loadConfiguration();
        const unsigned int seriesKey = static_cast<unsigned int>(overlayKey::series);
        for (const auto& entry : m_entries)
        {
                if (entry.TagKey != seriesKey)
                {
                        continue;
                }

                if (t_seriesNumber.isEmpty() && t_imageCount <= 0)
                {
                        setEntryText(entry.TagKey, {});
                        update();
                        return;
                }

                const int clampedIndex = std::max(t_imageIndex, 0);
                const int clampedCount = std::max(t_imageCount, 0);
                const int normalizedIndex = (clampedCount > 0)
                        ? std::min(clampedIndex, clampedCount - 1)
                        : clampedIndex;
                QString text = entry.TextBefore;
                if (!t_seriesNumber.isEmpty())
                {
                        text.append(t_seriesNumber);
                }
                text.append(entry.TextAfter);
                if (clampedCount > 0)
                {
                        text.append(tr("Image: %1/%2\n").arg(normalizedIndex + 1).arg(clampedCount));
                }
                setEntryText(entry.TagKey, text);
                update();
                return;
        }
}

void asclepios::gui::DcmtkOverlayWidget::setZoom(double t_zoomFactor)
{
        loadConfiguration();
        const unsigned int zoomKey = static_cast<unsigned int>(overlayKey::zoom);
        for (const auto& entry : m_entries)
        {
                if (entry.TagKey != zoomKey)
                {
                        continue;
                }

                if (t_zoomFactor <= 0.0 || !std::isfinite(t_zoomFactor))
                {
                        setEntryText(entry.TagKey, {});
                        update();
                        return;
                }

                QString prefix = entry.TextBefore;
                if (prefix.isEmpty())
                {
                        prefix = QStringLiteral("Zoom: ");
                }
                QString text = prefix;
                text.append(formatZoom(t_zoomFactor));
                text.append(entry.TextAfter);
                setEntryText(entry.TagKey, text);
                update();
                return;
        }
}

void asclepios::gui::DcmtkOverlayWidget::setWindowLevel(double t_windowCenter, double t_windowWidth)
{
        loadConfiguration();
        const unsigned int levelKey = static_cast<unsigned int>(overlayKey::level);
        const unsigned int windowKey = static_cast<unsigned int>(overlayKey::window);

        for (const auto& entry : m_entries)
        {
                if (entry.TagKey != windowKey && entry.TagKey != levelKey)
                {
                        continue;
                }

                if (!std::isfinite(t_windowCenter) || !std::isfinite(t_windowWidth) || t_windowWidth <= 0.0)
                {
                        setEntryText(windowKey, {});
                        setEntryText(levelKey, {});
                        update();
                        return;
                }

                if (entry.TagKey == windowKey)
                {
                        QString prefix = entry.TextBefore;
                        if (prefix == QStringLiteral("WinLevel: ") || prefix.isEmpty())
                        {
                                prefix = QStringLiteral("WL: ");
                        }
                        QString text = prefix;
                        text.append(formatWindowLevel(t_windowCenter));
                        text.append(entry.TextAfter);
                        setEntryText(entry.TagKey, text);
                }
                else
                {
                        QString prefix = entry.TextBefore;
                        if (prefix == QStringLiteral(" / WinWidth: ") || prefix.isEmpty())
                        {
                                prefix = QStringLiteral(" / WW: ");
                        }
                        QString text = prefix;
                        text.append(formatWindowLevel(t_windowWidth));
                        text.append(entry.TextAfter.isEmpty() ? QStringLiteral("\n") : entry.TextAfter);
                        setEntryText(entry.TagKey, text);
                }
        }
        update();
}

void asclepios::gui::DcmtkOverlayWidget::clear()
{
        m_entryTexts.clear();
        update();
}

void asclepios::gui::DcmtkOverlayWidget::paintEvent(QPaintEvent* t_event)
{
        QWidget::paintEvent(t_event);
        if (!m_configurationLoaded || m_entries.isEmpty())
        {
                return;
        }

        bool hasText = false;
        for (int index = 0; index < cornerCount; ++index)
        {
                if (!aggregatedTextForCorner(index).isEmpty())
                {
                        hasText = true;
                        break;
                }
        }

        if (!hasText)
        {
                return;
        }

        QPainter painter(this);
        painter.setRenderHint(QPainter::TextAntialiasing, true);
        QFont font = painter.font();
        font.setFamily(QStringLiteral("Arial"));
        font.setPointSize(12);
        painter.setFont(font);

        const QRect area = rect().adjusted(12, 12, -12, -12);
        const int halfHeight = area.height() / 2;
        const QRect topRect(area.left(), area.top(), area.width(), halfHeight);
        const QRect bottomRect(area.left(), area.top() + halfHeight, area.width(), area.height() - halfHeight);

        const auto drawCorner = [&](const QRect& target, Qt::Alignment alignment, const QString& text)
        {
                if (text.isEmpty())
                {
                        return;
                }
                painter.setPen(QColor(0, 0, 0, 160));
                painter.drawText(target.translated(1, 1), alignment | Qt::TextWordWrap, text);
                painter.setPen(Qt::white);
                painter.drawText(target, alignment | Qt::TextWordWrap, text);
        };

        drawCorner(topRect, Qt::AlignLeft | Qt::AlignTop, aggregatedTextForCorner(0));
        drawCorner(bottomRect, Qt::AlignLeft | Qt::AlignBottom, aggregatedTextForCorner(1));
        drawCorner(bottomRect, Qt::AlignRight | Qt::AlignBottom, aggregatedTextForCorner(2));
        drawCorner(topRect, Qt::AlignRight | Qt::AlignTop, aggregatedTextForCorner(3));
}

void asclepios::gui::DcmtkOverlayWidget::loadConfiguration()
{
        if (m_configurationLoaded)
        {
                return;
        }

        QFile file(QString::fromUtf8(overlaysInformation));
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        {
                qCWarning(lcDcmtkOverlayWidget)
                        << "Failed to open overlays configuration" << file.fileName() << file.errorString();
                m_configurationLoaded = true;
                return;
        }

        const auto document = QJsonDocument::fromJson(file.readAll());
        const auto root = document.object();
        const auto overlays = root.value(QStringLiteral("Overlay")).toArray();
        m_entries.reserve(overlays.size());
        for (const auto& item : overlays)
        {
                const QJsonObject object = item.toObject();
                OverlayEntry entry;
                entry.TextBefore = object.value(QStringLiteral("TextBefore")).toString();
                entry.TextAfter = object.value(QStringLiteral("TextAfter")).toString();
                entry.TagKey = static_cast<unsigned int>(object.value(QStringLiteral("TagKey")).toInt());
                entry.Corner = object.value(QStringLiteral("Corner")).toInt();
                entry.Dynamic = isDynamicTag(entry.TagKey);
                m_entries.append(entry);
        }
        m_configurationLoaded = true;
}

void asclepios::gui::DcmtkOverlayWidget::populateStaticEntries(const DicomMetadata* t_metadata)
{
        if (!t_metadata)
        {
                return;
        }

        for (const auto& entry : m_entries)
        {
                if (entry.Dynamic)
                {
                        continue;
                }

                const QString text = composeStaticText(entry, t_metadata);
                if (!text.isEmpty())
                {
                        setEntryText(entry.TagKey, text);
                }
        }
}

void asclepios::gui::DcmtkOverlayWidget::setEntryText(unsigned int t_tagKey, const QString& t_text)
{
        if (t_text.trimmed().isEmpty())
        {
                m_entryTexts.remove(t_tagKey);
        }
        else
        {
                m_entryTexts.insert(t_tagKey, t_text);
        }
}

QString asclepios::gui::DcmtkOverlayWidget::aggregatedTextForCorner(int t_corner) const
{
        QString result;
        for (const auto& entry : m_entries)
        {
                if (entry.Corner != t_corner)
                {
                        continue;
                }
                const QString value = m_entryTexts.value(entry.TagKey);
                if (value.isEmpty())
                {
                        continue;
                }
                result.append(value);
        }
        return result;
}

QString asclepios::gui::DcmtkOverlayWidget::composeStaticText(const OverlayEntry& t_entry,
        const DicomMetadata* t_metadata) const
{
        if (!t_metadata)
        {
                return {};
        }

        const unsigned short group = static_cast<unsigned short>((t_entry.TagKey >> 16) & 0xFFFF);
        const unsigned short element = static_cast<unsigned short>(t_entry.TagKey & 0xFFFF);
        const DicomTag tag(group, element);
        std::string value = t_metadata->getString(tag);
        core::Utils::processTagFormat(tag, value);
        QString text = t_entry.TextBefore;
        text.append(QString::fromStdString(value));
        text.append(t_entry.TextAfter);
        if (text.isEmpty() || text == QStringLiteral("\n") || text == QStringLiteral("Series: \n")
                || text == QStringLiteral("Zoom: \n"))
        {
                return {};
        }
        return text;
}

bool asclepios::gui::DcmtkOverlayWidget::isDynamicTag(unsigned int t_tagKey)
{
        switch (static_cast<overlayKey>(t_tagKey))
        {
        case overlayKey::zoom:
        case overlayKey::series:
        case overlayKey::window:
        case overlayKey::level:
                return true;
        default:
                return false;
        }
}

QString asclepios::gui::DcmtkOverlayWidget::formatZoom(double t_zoom)
{
        if (!std::isfinite(t_zoom))
        {
                return QStringLiteral("NA");
        }
        return QString::number(t_zoom, 'f', 2);
}

QString asclepios::gui::DcmtkOverlayWidget::formatWindowLevel(double t_value)
{
        if (!std::isfinite(t_value))
        {
                return QStringLiteral("NA");
        }
        const double rounded = std::round(t_value);
        if (std::abs(t_value - rounded) < 0.5)
        {
                return QString::number(static_cast<long long>(rounded));
        }
        return QString::number(t_value, 'f', 1);
}
