#include "series.h"
#include <algorithm>
#include <atomic>
#include <cstdint>
#include <QLoggingCategory>
#include <QString>

namespace
{
        std::atomic<std::uint64_t> g_volumeCacheHits = 0;
        std::atomic<std::uint64_t> g_volumeCacheMisses = 0;

        void logVolumeCacheTelemetry(const char* t_event, const asclepios::core::Series* t_series)
        {
                const auto hits = g_volumeCacheHits.load(std::memory_order_relaxed);
                const auto misses = g_volumeCacheMisses.load(std::memory_order_relaxed);
                const auto total = hits + misses;
                const double hitRate = (total > 0)
                        ? (static_cast<double>(hits) * 100.0) / static_cast<double>(total)
                        : 0.0;
                const QString seriesUid = (t_series)
                        ? QString::fromStdString(t_series->getUID())
                        : QStringLiteral("n/a");
                qCInfo(lcSeries)
                        << "[Telemetry] Volume cache" << t_event
                        << "seriesUid" << seriesUid
                        << "hits" << static_cast<unsigned long long>(hits)
                        << "misses" << static_cast<unsigned long long>(misses)
                        << "hitRatePct" << hitRate;
        }
}

Q_LOGGING_CATEGORY(lcSeries, "asclepios.core.series")

asclepios::core::Image* asclepios::core::Series::getNextSingleFrameImage(Image* t_image)
{
	if (t_image->equal(m_singleFrameImages.rbegin()->get()))
	{
		return t_image;
	}
	const auto index = findImageIndex(m_singleFrameImages, t_image);
	auto it = m_singleFrameImages.begin();
	std::advance(it, index + 1);
	return it->get();
}

//-----------------------------------------------------------------------------
asclepios::core::Image* asclepios::core::Series::getPreviousSingleFrameImage(Image* t_image)
{
	if (t_image->equal(m_singleFrameImages.begin()->get()))
	{
		return t_image;
	}
	const auto index = findImageIndex(m_singleFrameImages, t_image);
	auto it = m_singleFrameImages.begin();
	std::advance(it, index - 1);
	return it->get();
}

//-----------------------------------------------------------------------------
asclepios::core::Image* asclepios::core::Series::getSingleFrameImageByIndex(const int& t_index)
{
	auto it = m_singleFrameImages.begin();
	std::advance(it, t_index);
	if (it != m_singleFrameImages.end())
	{
		return it->get();
	}
	throw std::runtime_error("Index is out of bounds!");
}

//-----------------------------------------------------------------------------
std::shared_ptr<asclepios::core::DicomVolume> asclepios::core::Series::getVolumeForSingleFrameSeries()
{
        if (m_cachedVolume)
        {
                g_volumeCacheHits.fetch_add(1, std::memory_order_relaxed);
                logVolumeCacheTelemetry("hit", this);
                return m_cachedVolume;
        }
        if (m_singleFrameImages.empty())
        {
                qCWarning(lcSeries) << "Requested volume for series without single-frame images.";
                return nullptr;
	}
	std::vector<std::string> paths;
	paths.reserve(m_singleFrameImages.size());
	for (const auto& image : m_singleFrameImages)
	{
		if (!image->getImagePath().empty())
		{
			paths.emplace_back(image->getImagePath());
		}
	}
        if (paths.empty())
        {
                qCWarning(lcSeries) << "No valid file paths were collected for the series volume.";
                return nullptr;
        }
        g_volumeCacheMisses.fetch_add(1, std::memory_order_relaxed);
        try
        {
                m_cachedVolume = DicomVolumeLoader::loadSeries(paths);
        }
        catch (const std::exception& ex)
        {
                qCCritical(lcSeries) << "Failed to load series volume:" << ex.what();
                m_cachedVolume.reset();
        }
        logVolumeCacheTelemetry("miss", this);
        return m_cachedVolume;
}

//-----------------------------------------------------------------------------
const asclepios::core::DicomMetadata* asclepios::core::Series::getMetadataForSeries()
{
	const auto volume = getVolumeForSingleFrameSeries();
	return volume ? &volume->Metadata : nullptr;
}

//-----------------------------------------------------------------------------
asclepios::core::Image* asclepios::core::Series::addSingleFrameImage(std::unique_ptr<Image> t_image, bool& t_newImage)
{
	auto index = findImageIndex(m_singleFrameImages, t_image.get());
	t_newImage = false;
	if (index == m_singleFrameImages.size())
	{
		m_singleFrameImages.emplace(std::move(t_image));
		index = m_singleFrameImages.size() - 1;
		t_newImage = true;
		m_cachedVolume.reset();
	}
	auto it = m_singleFrameImages.begin();
	std::advance(it, index);
	it->get()->setIndex(index);
	return it->get();
}

//-----------------------------------------------------------------------------
asclepios::core::Image* asclepios::core::Series::addMultiFrameImage(std::unique_ptr<Image> t_image, bool& t_newImage)
{
	auto index = findImageIndex(m_multiFrameImages, t_image.get());
	t_newImage = false;
	if (index == m_multiFrameImages.size())
	{
		m_multiFrameImages.emplace(std::move(t_image));
		index = m_multiFrameImages.size() - 1;
		t_newImage = true;
		m_cachedVolume.reset();
	}
	auto it = m_multiFrameImages.begin();
	std::advance(it, index);
	it->get()->setIndex(index);
	return it->get();
}

//-----------------------------------------------------------------------------
bool asclepios::core::Series::isLess(Series* t_lhs, Series* t_rhs)
{
	return t_lhs->getUID() < t_rhs->getUID();
}

//-----------------------------------------------------------------------------
std::size_t asclepios::core::Series::findImageIndex(
	const std::set<std::unique_ptr<Image>, Image::imageCompare>& t_images, Image* t_image)
{
	auto const it = std::find_if(t_images.begin(), t_images.end(),
	                             [&](const std::unique_ptr<Image>& image) { return image->equal(t_image); });
	return std::distance(t_images.begin(), it);
}
