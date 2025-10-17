#pragma once

#include <memory>
#include <string>
#include <unordered_map>
#include <vector>

#include <vtkImageData.h>
#include <vtkMatrix4x4.h>
#include <vtkSmartPointer.h>

namespace asclepios::core
{
	struct DicomTag
	{
		unsigned short Group = 0;
		unsigned short Element = 0;

		constexpr DicomTag() = default;

		constexpr DicomTag(unsigned short t_group, unsigned short t_element)
			: Group(t_group)
			, Element(t_element)
		{
		}

		[[nodiscard]] constexpr unsigned int packed() const
		{
			return (static_cast<unsigned int>(Group) << 16) | static_cast<unsigned int>(Element);
		}
	};

	struct DicomMetadata
	{
		std::unordered_map<unsigned int, std::string> Values;

		[[nodiscard]] std::string getString(const DicomTag& tag) const
		{
			const auto it = Values.find(tag.packed());
			return it != Values.end() ? it->second : std::string();
		}
	};

	struct DicomGeometry
	{
		double Origin[3] = {0.0, 0.0, 0.0};
		double Spacing[3] = {1.0, 1.0, 1.0};
		double RowDirection[3] = {1.0, 0.0, 0.0};
		double ColumnDirection[3] = {0.0, 1.0, 0.0};
		double NormalDirection[3] = {0.0, 0.0, 1.0};
	};

	struct DicomPixelInfo
	{
		int SamplesPerPixel = 1;
		int BitsAllocated = 16;
		bool IsSigned = false;
		bool IsPlanar = false;
		bool InvertMonochrome = false;
		double RescaleSlope = 1.0;
		double RescaleIntercept = 0.0;
		double WindowCenter = 0.0;
		double WindowWidth = 0.0;
	};

	struct DicomVolume
	{
		vtkSmartPointer<vtkImageData> ImageData = {};
		vtkSmartPointer<vtkMatrix4x4> Direction = {};
		DicomGeometry Geometry = {};
		DicomPixelInfo PixelInfo = {};
		DicomMetadata Metadata = {};
		int NumberOfFrames = 1;
	};

        class DicomVolumeLoader
        {
        public:
                static std::shared_ptr<DicomVolume> loadImage(const std::string& path);
                static std::shared_ptr<DicomVolume> loadSeries(const std::vector<std::string>& slicePaths);
                static bool diagnoseStudy(const std::string& path);

        private:
                static void populateDirectionMatrix(DicomVolume& volume);
        };
}
