#pragma once

#include <QHash>
#include <QVector>
#include <QWidget>

#include "dicomvolume.h"

namespace asclepios::gui
{
        class DcmtkOverlayWidget final : public QWidget
        {
        Q_OBJECT
        public:
                explicit DcmtkOverlayWidget(QWidget* parent = nullptr);
                ~DcmtkOverlayWidget() override = default;

                void setMetadata(const core::DicomMetadata* t_metadata);
                void setSeriesInformation(const QString& t_seriesNumber, int t_imageIndex, int t_imageCount);
                void setZoom(double t_zoomFactor);
                void setWindowLevel(double t_windowCenter, double t_windowWidth);
                void setToolName(const QString& t_toolName);
                void clear();

        protected:
                void paintEvent(QPaintEvent* t_event) override;

        private:
                struct OverlayEntry
                {
                        QString TextBefore = {};
                        QString TextAfter = {};
                        unsigned int TagKey = 0;
                        int Corner = 0;
                        bool Dynamic = false;
                };

                QVector<OverlayEntry> m_entries = {};
                QHash<unsigned int, QString> m_entryTexts = {};
                bool m_configurationLoaded = false;

                void loadConfiguration();
                void populateStaticEntries(const core::DicomMetadata* t_metadata);
                void setEntryText(unsigned int t_tagKey, const QString& t_text);
                [[nodiscard]] QString aggregatedTextForCorner(int t_corner) const;
                [[nodiscard]] QString composeStaticText(const OverlayEntry& t_entry,
                        const core::DicomMetadata* t_metadata) const;
                [[nodiscard]] static bool isDynamicTag(unsigned int t_tagKey);
                [[nodiscard]] static QString formatZoom(double t_zoom);
                [[nodiscard]] static QString formatWindowLevel(double t_value);
        };
}
