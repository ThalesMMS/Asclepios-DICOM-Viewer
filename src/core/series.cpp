#include "series.h"
#include "study.h"

#include <algorithm>
#include <QLoggingCategory>
#include <QString>
#include <stdexcept>

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
        const std::string studyUid = (m_parent) ? m_parent->getUID() : std::string();
        const std::string& seriesUid = getUID();
        try
        {
                return DicomVolumeLoader::loadSeries(studyUid, seriesUid, paths);
        }
        catch (const std::exception& ex)
        {
                const auto uidLabel = seriesUid.empty()
                        ? QStringLiteral("<empty>")
                        : QString::fromStdString(seriesUid);
                qCCritical(lcSeries)
                        << "Failed to load series volume for"
                        << uidLabel
                        << ":" << ex.what();
        }
        return nullptr;
}

//-----------------------------------------------------------------------------
const asclepios::core::DicomMetadata* asclepios::core::Series::getMetadataForSeries()
{
        if (m_cachedMetadata)
        {
                return m_cachedMetadata.get();
        }

        const auto volume = getVolumeForSingleFrameSeries();
        if (!volume)
        {
                m_cachedMetadata.reset();
                return nullptr;
        }

        m_cachedMetadata = std::make_unique<DicomMetadata>(volume->Metadata);
        return m_cachedMetadata.get();
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
                const std::string studyUid = (m_parent) ? m_parent->getUID() : std::string();
                DicomVolumeLoader::invalidateSeriesCache(studyUid, getUID());
                m_cachedMetadata.reset();
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
                const std::string studyUid = (m_parent) ? m_parent->getUID() : std::string();
                DicomVolumeLoader::invalidateSeriesCache(studyUid, getUID());
                m_cachedMetadata.reset();
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
