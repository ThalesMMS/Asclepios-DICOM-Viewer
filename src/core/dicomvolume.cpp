#include "dicomvolume.h"

#include <algorithm>
#include <cmath>
#include <cstring>
#include <limits>
#include <stdexcept>
#include <type_traits>

#include <dcmtk/dcmdata/dcdeftag.h>
#include <dcmtk/dcmdata/dcdicent.h>
#include <dcmtk/dcmdata/dcfilefo.h>
#include <dcmtk/dcmdata/dcvrda.h>
#include <dcmtk/dcmdata/dcvrds.h>
#include <dcmtk/dcmdata/dcvrlo.h>
#include <dcmtk/dcmdata/dcvrpn.h>
#include <dcmtk/dcmdata/dcvrsh.h>
#include <dcmtk/dcmdata/dcvrtm.h>
#include <dcmtk/dcmdata/dcrledrg.h>
#include <dcmtk/dcmdata/dcpixel.h>
#include <dcmtk/dcmdata/dcxfer.h>
#include <dcmtk/ofstd/ofstring.h>
#include <dcmtk/dcmimgle/diutils.h>

#include <QLoggingCategory>
#include <QString>

#include <vtkDataArray.h>
#include <vtkDataObject.h>
#include <vtkImageData.h>
#include <vtkPointData.h>
#include <vtkMatrix4x4.h>

using asclepios::core::DicomMetadata;
using asclepios::core::DicomPixelInfo;
using asclepios::core::DicomTag;
using asclepios::core::DicomVolume;
using asclepios::core::DicomVolumeLoader;
using DicomGeometry = asclepios::core::DicomGeometry;

Q_LOGGING_CATEGORY(lcDicomVolumeLoader, "asclepios.core.dicomvolume")

namespace
{
	constexpr double epsilon = 1e-8;

	[[nodiscard]] std::string extractString(DcmItem& dataset, const DcmTagKey& tag)
	{
		OFString value;
		if (dataset.findAndGetOFString(tag, value).good())
		{
			return value.c_str();
		}
		return {};
	}

	template <typename T>
	[[nodiscard]] T extractNumeric(DcmItem& dataset, const DcmTagKey& tag, unsigned long pos, T defaultValue)
	{
		T value = defaultValue;
		if (dataset.findAndGetFloat64(tag, value, pos).bad())
		{
			return defaultValue;
		}
		return value;
	}

	template <typename T>
	void fillArray(DcmItem& dataset, const DcmTagKey& tag, T* array, unsigned long count, T defaultValue)
	{
		for (unsigned long index = 0; index < count; ++index)
		{
			array[index] = extractNumeric(dataset, tag, index, defaultValue);
		}
	}

	void populateMetadata(DcmItem& dataset, DicomMetadata& metadata)
	{
		static const DcmTagKey keys[] = {
			DCM_PatientName,
			DCM_PatientID,
			DCM_PatientBirthDate,
			DCM_PatientSex,
			DCM_StudyInstanceUID,
			DCM_SeriesInstanceUID,
			DCM_SeriesNumber,
			DCM_Modality,
			DCM_StudyDate,
			DCM_StudyTime,
			DCM_AccessionNumber,
			DCM_Manufacturer,
			DCM_InstitutionName,
			DCM_ReferringPhysicianName,
			DCM_ProtocolName,
			DCM_SeriesDescription,
			DCM_StudyDescription
		};

		for (const auto& key : keys)
		{
			const auto value = extractString(dataset, key);
			if (!value.empty())
			{
				DicomTag dicomTag(key.getGroup(), key.getElement());
				metadata.Values.try_emplace(dicomTag.packed(), value);
			}
		}
	}

	void populatePixelInfo(DcmItem& dataset, DicomPixelInfo& info)
	{
		Uint16 ushortValue = 0;
		Sint16 sshortValue = 0;
		double doubleValue = 0.0;

		if (dataset.findAndGetUint16(DCM_SamplesPerPixel, ushortValue).good())
		{
			info.SamplesPerPixel = static_cast<int>(ushortValue);
		}

		if (dataset.findAndGetUint16(DCM_BitsAllocated, ushortValue).good())
		{
			info.BitsAllocated = static_cast<int>(ushortValue);
		}

		if (dataset.findAndGetUint16(DCM_PixelRepresentation, ushortValue).good())
		{
			info.IsSigned = (ushortValue == 1);
		}

		if (dataset.findAndGetUint16(DCM_PlanarConfiguration, ushortValue).good())
		{
			info.IsPlanar = (ushortValue != 0);
		}

		if (dataset.findAndGetFloat64(DCM_RescaleSlope, doubleValue).good())
		{
			info.RescaleSlope = doubleValue;
		}
		if (dataset.findAndGetFloat64(DCM_RescaleIntercept, doubleValue).good())
		{
			info.RescaleIntercept = doubleValue;
		}

		if (dataset.findAndGetFloat64(DCM_WindowCenter, doubleValue).good())
		{
			info.WindowCenter = doubleValue;
		}
		if (dataset.findAndGetFloat64(DCM_WindowWidth, doubleValue).good())
		{
			info.WindowWidth = doubleValue;
		}

		const auto photometric = extractString(dataset, DCM_PhotometricInterpretation);
		info.InvertMonochrome = (!photometric.empty() && (photometric == "MONOCHROME1"));
	}

	void populateGeometry(DcmItem& dataset, DicomGeometry& geometry)
	{
		fillArray(dataset, DCM_ImagePositionPatient, geometry.Origin, 3, 0.0);
		double spacingXY[2] = {1.0, 1.0};
		fillArray(dataset, DCM_PixelSpacing, spacingXY, 2, 1.0);
		geometry.Spacing[0] = spacingXY[0];
		geometry.Spacing[1] = spacingXY[1];

		double orientation[6] = {1.0, 0.0, 0.0, 0.0, 1.0, 0.0};
		fillArray(dataset, DCM_ImageOrientationPatient, orientation, 6, 0.0);
		std::copy_n(orientation, 3, geometry.RowDirection);
		std::copy_n(orientation + 3, 3, geometry.ColumnDirection);

		double normal[3] = {
			geometry.RowDirection[1] * geometry.ColumnDirection[2] - geometry.RowDirection[2] * geometry.ColumnDirection[1],
			geometry.RowDirection[2] * geometry.ColumnDirection[0] - geometry.RowDirection[0] * geometry.ColumnDirection[2],
			geometry.RowDirection[0] * geometry.ColumnDirection[1] - geometry.RowDirection[1] * geometry.ColumnDirection[0]
		};
		std::copy_n(normal, 3, geometry.NormalDirection);

		double spacingZ = extractNumeric(dataset, DCM_SpacingBetweenSlices, 0, 0.0);
		if (spacingZ <= epsilon)
		{
			spacingZ = extractNumeric(dataset, DCM_SliceThickness, 0, 1.0);
		}
		if (spacingZ <= epsilon)
		{
			spacingZ = 1.0;
		}
		geometry.Spacing[2] = spacingZ;
	}

        double computeUnsignedMaximum(int bits)
        {
                if (bits <= 0)
                {
                        return 0.0;
                }
                if (bits >= static_cast<int>(std::numeric_limits<unsigned long long>::digits))
                {
                        return static_cast<double>(std::numeric_limits<unsigned long long>::max());
                }
                const auto value = (1ULL << bits) - 1ULL;
                return static_cast<double>(value);
        }

        double computeSignedMinimum(int bits)
        {
                if (bits <= 0)
                {
                        return 0.0;
                }
                if (bits >= static_cast<int>(std::numeric_limits<long long>::digits))
                {
                        return static_cast<double>(std::numeric_limits<long long>::min());
                }
                const auto value = -(1LL << (bits - 1));
                return static_cast<double>(value);
        }

        double computeSignedMaximum(int bits)
        {
                if (bits <= 0)
                {
                        return 0.0;
                }
                if (bits >= static_cast<int>(std::numeric_limits<long long>::digits))
                {
                        return static_cast<double>(std::numeric_limits<long long>::max());
                }
                const auto value = (1LL << (bits - 1)) - 1LL;
                return static_cast<double>(value);
        }

        void allocateImageData(DicomVolume& volume, int width, int height, int depth,
                               int requestedScalarType = VTK_VOID)
        {
                if (!volume.ImageData)
                {
                        volume.ImageData = vtkSmartPointer<vtkImageData>::New();
                }
                volume.ImageData->SetDimensions(width, height, depth);
                volume.ImageData->SetSpacing(volume.Geometry.Spacing);
                volume.ImageData->SetOrigin(volume.Geometry.Origin);

                const auto bitsAllocated = volume.PixelInfo.BitsAllocated;
                const bool isSigned = volume.PixelInfo.IsSigned;
                const double slope = volume.PixelInfo.RescaleSlope;
                const double intercept = volume.PixelInfo.RescaleIntercept;

                const double originalMinimum = isSigned ? computeSignedMinimum(bitsAllocated) : 0.0;
                const double originalMaximum = isSigned ? computeSignedMaximum(bitsAllocated) : computeUnsignedMaximum(bitsAllocated);
                const double transformedMinimum = slope * originalMinimum + intercept;
                const double transformedMaximum = slope * originalMaximum + intercept;
                const double expectedMinimum = std::min(transformedMinimum, transformedMaximum);
                const double expectedMaximum = std::max(transformedMinimum, transformedMaximum);

                int scalarType = requestedScalarType;

                if (scalarType != VTK_VOID)
                {
                        volume.ImageData->AllocateScalars(scalarType, volume.PixelInfo.SamplesPerPixel);
                        return;
                }

                const double unsignedMaximum = computeUnsignedMaximum(bitsAllocated);
                const bool requiresSignedRange = !isSigned &&
                        (expectedMinimum < 0.0 - epsilon || expectedMaximum > unsignedMaximum + epsilon);

                if (requiresSignedRange)
                {
                        const double shortMinimum = static_cast<double>(std::numeric_limits<short>::min());
                        const double shortMaximum = static_cast<double>(std::numeric_limits<short>::max());
                        if (expectedMinimum >= shortMinimum && expectedMaximum <= shortMaximum)
                        {
                                scalarType = VTK_SHORT;
                        }
                        else
                        {
                                scalarType = VTK_FLOAT;
                        }
                }
                else if (bitsAllocated <= 8)
                {
                        scalarType = isSigned ? VTK_CHAR : VTK_UNSIGNED_CHAR;
                }
                else if (bitsAllocated <= 16)
                {
                        scalarType = isSigned ? VTK_SHORT : VTK_UNSIGNED_SHORT;
                }
                else
                {
                        scalarType = isSigned ? VTK_INT : VTK_UNSIGNED_INT;
                }

                volume.ImageData->AllocateScalars(scalarType, volume.PixelInfo.SamplesPerPixel);
        }

        template <typename SourceT, typename TargetT>
        void copyPixels(const SourceT* source, TargetT* target, size_t count,
                        const DicomPixelInfo& pixelInfo)
        {
                const double slope = pixelInfo.RescaleSlope;
                const double intercept = pixelInfo.RescaleIntercept;
                if (std::abs(slope - 1.0) <= epsilon && std::abs(intercept) <= epsilon)
                {
                        if constexpr (std::is_same_v<SourceT, TargetT>)
                        {
                                std::copy(source, source + count, target);
                        }
                        else
                        {
                                std::transform(source, source + count, target,
                                               [](const SourceT value)
                                               {
                                                       return static_cast<TargetT>(value);
                                               });
                        }
                        return;
                }

                std::transform(source, source + count, target,
                               [&](const SourceT value)
                               {
                                       const double transformed = slope * static_cast<double>(value) + intercept;
                                       if constexpr (std::is_floating_point_v<TargetT>)
                                       {
                                               return static_cast<TargetT>(transformed);
                                       }
                                       else
                                       {
                                               return static_cast<TargetT>(std::round(transformed));
                                       }
                               });
        }

        template <typename SourceT>
        void copyFrameData(const SourceT* source, vtkImageData* imageData, int frameIndex,
                           const DicomPixelInfo& pixelInfo, int width, int height)
        {
                const auto samples = pixelInfo.SamplesPerPixel;
                const vtkIdType sliceVoxelCount = static_cast<vtkIdType>(width) * height * samples;
                const vtkIdType sliceOffset = sliceVoxelCount * frameIndex;
		auto* scalars = imageData->GetPointData()->GetScalars();
		if (!scalars)
		{
			throw std::runtime_error("vtkImageData is missing scalar data.");
		}
                switch (scalars->GetDataType())
                {
                case VTK_UNSIGNED_CHAR:
                        copyPixels(source,
                                   static_cast<unsigned char*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                case VTK_CHAR:
                        copyPixels(source,
                                   static_cast<signed char*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                case VTK_UNSIGNED_SHORT:
                        copyPixels(source,
                                   static_cast<unsigned short*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                case VTK_SHORT:
                        copyPixels(source,
                                   static_cast<signed short*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                case VTK_UNSIGNED_INT:
                        copyPixels(source,
                                   static_cast<Uint32*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                case VTK_INT:
                        copyPixels(source,
                                   static_cast<Sint32*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                case VTK_FLOAT:
                        copyPixels(source,
                                   static_cast<float*>(scalars->GetVoidPointer(sliceOffset)),
                                   static_cast<size_t>(sliceVoxelCount),
                                   pixelInfo);
                        break;
                default:
                        throw std::runtime_error("Unsupported scalar type for DICOM image data.");
                }
        }

	void populateDirectionMatrixInternal(DicomVolume& volume)
	{
		if (!volume.Direction)
		{
			volume.Direction = vtkSmartPointer<vtkMatrix4x4>::New();
		}
		auto* const matrix = volume.Direction.GetPointer();
		for (int row = 0; row < 3; ++row)
		{
			matrix->SetElement(row, 0, volume.Geometry.RowDirection[row]);
			matrix->SetElement(row, 1, volume.Geometry.ColumnDirection[row]);
			matrix->SetElement(row, 2, volume.Geometry.NormalDirection[row]);
			matrix->SetElement(row, 3, volume.Geometry.Origin[row]);
		}
		matrix->SetElement(3, 0, 0.0);
		matrix->SetElement(3, 1, 0.0);
		matrix->SetElement(3, 2, 0.0);
		matrix->SetElement(3, 3, 1.0);
	}

	void normalizeVector(double (&vector)[3])
	{
		const double magnitude = std::sqrt(vector[0] * vector[0] + vector[1] * vector[1] + vector[2] * vector[2]);
		if (magnitude <= epsilon)
		{
			return;
		}
		for (double& component : vector)
		{
			component /= magnitude;
		}
	}

	void normalizeDirections(DicomGeometry& geometry)
	{
		normalizeVector(geometry.RowDirection);
		normalizeVector(geometry.ColumnDirection);
		normalizeVector(geometry.NormalDirection);
	}

	std::shared_ptr<DicomVolume> loadSingleFile(const std::string& path)
	{
		DcmFileFormat file;
		const OFCondition status = file.loadFile(path.c_str());
		if (status.bad())
		{
			throw std::runtime_error("Failed to load DICOM file: " + path);
		}
		auto* dataset = file.getDataset();
		if (!dataset)
		{
			throw std::runtime_error("Missing dataset in DICOM file: " + path);
		}
		dataset->loadAllDataIntoMemory();
		const OFCondition representationStatus =
			dataset->chooseRepresentation(EXS_LittleEndianExplicit, nullptr);
		if (representationStatus.bad())
		{
			throw std::runtime_error(
				"Failed to convert DICOM transfer syntax for: " + path +
				" (" + std::string(representationStatus.text()) + ')');
		}
		if (!dataset->canWriteXfer(EXS_LittleEndianExplicit))
		{
			throw std::runtime_error(
				"Incompatible DICOM transfer syntax for: " + path);
		}

		std::shared_ptr<DicomVolume> volume = std::make_shared<DicomVolume>();
		populateMetadata(*dataset, volume->Metadata);
		populatePixelInfo(*dataset, volume->PixelInfo);
		populateGeometry(*dataset, volume->Geometry);
		normalizeDirections(volume->Geometry);
		populateDirectionMatrixInternal(*volume);

		Uint16 width = 0;
		Uint16 height = 0;
		dataset->findAndGetUint16(DCM_Columns, width);
		dataset->findAndGetUint16(DCM_Rows, height);

		Uint32 numberOfFrames = 1;
		if (dataset->findAndGetUint32(DCM_NumberOfFrames, numberOfFrames).bad())
		{
			numberOfFrames = 1;
		}
		volume->NumberOfFrames = static_cast<int>(numberOfFrames);
		allocateImageData(*volume, width, height, static_cast<int>(numberOfFrames));

		DcmElement* pixelElement = nullptr;
		if (dataset->findAndGetElement(DCM_PixelData, pixelElement).bad() || pixelElement == nullptr)
		{
			throw std::runtime_error("Pixel data element missing in file: " + path);
		}
		auto* pixelDataElement = dynamic_cast<DcmPixelData*>(pixelElement);
		if (!pixelDataElement)
		{
			throw std::runtime_error("Pixel data element has unexpected type in file: " + path);
		}

		const auto bits = volume->PixelInfo.BitsAllocated;
		const bool isSigned = volume->PixelInfo.IsSigned;
		const size_t sliceSize = static_cast<size_t>(width) * height * volume->PixelInfo.SamplesPerPixel;

                if (bits <= 8)
                {
                        std::vector<Uint8> frameBuffer(sliceSize);
                        Uint32 startFragment = 0;
                        OFString decompressedColorModel;

                        for (unsigned long frame = 0; frame < numberOfFrames; ++frame)
                        {
                                const OFCondition status = pixelDataElement->getUncompressedFrame(
                                        dataset,
                                        static_cast<Uint32>(frame),
                                        startFragment,
                                        frameBuffer.data(),
                                        static_cast<Uint32>(frameBuffer.size() * sizeof(Uint8)),
                                        decompressedColorModel);

                                if (status.bad())
                                {
                                        throw std::runtime_error(
                                                "Unable to decompress frame " + std::to_string(frame) + " for: " + path +
                                                " (" + std::string(status.text()) + ')');
                                }

                                copyFrameData(
                                        frameBuffer.data(),
                                        volume->ImageData,
                                        static_cast<int>(frame),
                                        volume->PixelInfo,
                                        width,
                                        height);
                        }
                }
                else if (bits <= 16)
                {
                        if (isSigned)
                        {
                                std::vector<Sint16> frameBuffer(sliceSize);
                                Uint32 startFragment = 0;
                                OFString decompressedColorModel;

                                for (unsigned long frame = 0; frame < numberOfFrames; ++frame)
                                {
                                        const OFCondition status = pixelDataElement->getUncompressedFrame(
                                                dataset,
                                                static_cast<Uint32>(frame),
                                                startFragment,
                                                frameBuffer.data(),
                                                static_cast<Uint32>(frameBuffer.size() * sizeof(Sint16)),
                                                decompressedColorModel);

                                        if (status.bad())
                                        {
                                                throw std::runtime_error(
                                                        "Unable to decompress frame " + std::to_string(frame) + " for: " + path +
                                                        " (" + std::string(status.text()) + ')');
                                        }

                                        copyFrameData(
                                                frameBuffer.data(),
                                                volume->ImageData,
                                                static_cast<int>(frame),
                                                volume->PixelInfo,
                                                width,
                                                height);
                                }
                        }
                        else
                        {
                                std::vector<Uint16> frameBuffer(sliceSize);
                                Uint32 startFragment = 0;
                                OFString decompressedColorModel;

                                for (unsigned long frame = 0; frame < numberOfFrames; ++frame)
                                {
                                        const OFCondition status = pixelDataElement->getUncompressedFrame(
                                                dataset,
                                                static_cast<Uint32>(frame),
                                                startFragment,
                                                frameBuffer.data(),
                                                static_cast<Uint32>(frameBuffer.size() * sizeof(Uint16)),
                                                decompressedColorModel);

                                        if (status.bad())
                                        {
                                                throw std::runtime_error(
                                                        "Unable to decompress frame " + std::to_string(frame) + " for: " + path +
                                                        " (" + std::string(status.text()) + ')');
                                        }

                                        copyFrameData(
                                                frameBuffer.data(),
                                                volume->ImageData,
                                                static_cast<int>(frame),
                                                volume->PixelInfo,
                                                width,
                                                height);
                                }
                        }
                }
                else if (isSigned)
                {
                        std::vector<Sint32> frameBuffer(sliceSize);
                        Uint32 startFragment = 0;
                        OFString decompressedColorModel;

                        for (unsigned long frame = 0; frame < numberOfFrames; ++frame)
                        {
                                const OFCondition status = pixelDataElement->getUncompressedFrame(
                                        dataset,
                                        static_cast<Uint32>(frame),
                                        startFragment,
                                        frameBuffer.data(),
                                        static_cast<Uint32>(frameBuffer.size() * sizeof(Sint32)),
                                        decompressedColorModel);

                                if (status.bad())
                                {
                                        throw std::runtime_error(
                                                "Unable to decompress frame " + std::to_string(frame) + " for: " + path +
                                                " (" + std::string(status.text()) + ')');
                                }

                                copyFrameData(
                                        frameBuffer.data(),
                                        volume->ImageData,
                                        static_cast<int>(frame),
                                        volume->PixelInfo,
                                        width,
                                        height);
                        }
                }
                else
                {
                        std::vector<Uint32> frameBuffer(sliceSize);
                        Uint32 startFragment = 0;
                        OFString decompressedColorModel;

                        for (unsigned long frame = 0; frame < numberOfFrames; ++frame)
                        {
                                const OFCondition status = pixelDataElement->getUncompressedFrame(
                                        dataset,
                                        static_cast<Uint32>(frame),
                                        startFragment,
                                        frameBuffer.data(),
                                        static_cast<Uint32>(frameBuffer.size() * sizeof(Uint32)),
                                        decompressedColorModel);

                                if (status.bad())
                                {
                                        throw std::runtime_error(
                                                "Unable to decompress frame " + std::to_string(frame) + " for: " + path +
                                                " (" + std::string(status.text()) + ')');
                                }

                                copyFrameData(
                                        frameBuffer.data(),
                                        volume->ImageData,
                                        static_cast<int>(frame),
                                        volume->PixelInfo,
                                        width,
                                        height);
                        }
                }

                volume->PixelInfo.RescaleSlope = 1.0;
                volume->PixelInfo.RescaleIntercept = 0.0;

                return volume;
        }
}

std::shared_ptr<DicomVolume> DicomVolumeLoader::loadImage(const std::string& path)
{
        return loadSingleFile(path);
}

bool DicomVolumeLoader::diagnoseStudy(const std::string& path)
{
        const auto qPath = QString::fromStdString(path);
        qCInfo(lcDicomVolumeLoader)
                << "Running diagnostic load for" << qPath;

        DcmFileFormat file;
        const OFCondition status = file.loadFile(path.c_str());
        if (status.bad())
        {
                qCWarning(lcDicomVolumeLoader)
                        << "Diagnostic failed to open" << qPath
                        << ":" << status.text();
                return false;
        }

        auto* dataset = file.getDataset();
        if (!dataset)
        {
                qCWarning(lcDicomVolumeLoader)
                        << "Diagnostic dataset missing for" << qPath;
                return false;
        }

        const DcmXfer originalXfer(dataset->getOriginalXfer());
        qCInfo(lcDicomVolumeLoader)
                << "Original transfer syntax:"
                << QString::fromLatin1(originalXfer.getXferName())
                << "encapsulated:" << static_cast<bool>(originalXfer.isEncapsulated());

        DcmElement* pixelElement = nullptr;
        if (dataset->findAndGetElement(DCM_PixelData, pixelElement).good() && pixelElement)
        {
                if (auto* pixelData = dynamic_cast<DcmPixelData*>(pixelElement))
                {
                        E_TransferSyntax repType = EXS_Unknown;
                        const DcmRepresentationParameter* repParam = nullptr;
                        pixelData->getOriginalRepresentationKey(repType, repParam);
                        const DcmXfer pixelXfer(repType);
			qCInfo(lcDicomVolumeLoader)
			        << "Pixel data representation:"
			        << QString::fromLatin1(pixelXfer.getXferName())
			        << "encapsulated:" << static_cast<bool>(pixelXfer.isEncapsulated());
                }
                else
                {
                        qCWarning(lcDicomVolumeLoader)
                                << "Diagnostic pixel data element had unexpected type for"
                                << qPath;
                }
        }
        else
        {
                qCWarning(lcDicomVolumeLoader)
                        << "Diagnostic pixel data lookup failed for" << qPath;
        }

        try
        {
                const auto volume = loadImage(path);
                if (!volume || !volume->ImageData)
                {
                        qCWarning(lcDicomVolumeLoader)
                                << "Diagnostic load produced empty image data for" << qPath;
                        return false;
                }

                int dimensions[3] = {0, 0, 0};
                volume->ImageData->GetDimensions(dimensions);
                if (dimensions[0] <= 0 || dimensions[1] <= 0 || dimensions[2] <= 0)
                {
                        qCWarning(lcDicomVolumeLoader)
                                << "Diagnostic load reported invalid dimensions for"
                                << qPath
                                << dimensions[0] << dimensions[1] << dimensions[2];
                        return false;
                }

                qCInfo(lcDicomVolumeLoader)
                        << "Diagnostic load succeeded. Dimensions:"
                        << dimensions[0] << dimensions[1] << dimensions[2];
                auto* scalars = volume->ImageData->GetPointData() ?
                        volume->ImageData->GetPointData()->GetScalars() : nullptr;
                if (scalars)
                {
                        qCInfo(lcDicomVolumeLoader)
                                << "Diagnostic scalar type:"
                                << scalars->GetDataTypeAsString()
                                << "components:"
                                << scalars->GetNumberOfComponents();
                }
                qCInfo(lcDicomVolumeLoader)
                        << "Diagnostic rescale applied:"
                        << volume->PixelInfo.RescaleSlope
                        << volume->PixelInfo.RescaleIntercept;
                return true;
        }
        catch (const std::exception& ex)
        {
                qCCritical(lcDicomVolumeLoader)
                        << "Diagnostic load failed for"
                        << qPath
                        << ":" << ex.what();
        }
        catch (...)
        {
                qCCritical(lcDicomVolumeLoader)
                        << "Diagnostic load failed for"
                        << qPath
                        << ": unknown exception.";
        }

        return false;
}

std::shared_ptr<DicomVolume> DicomVolumeLoader::loadSeries(const std::vector<std::string>& slicePaths)
{
        if (slicePaths.empty())
        {
                throw std::runtime_error("Cannot load DICOM series: no slice paths provided.");
	}

	std::vector<std::shared_ptr<DicomVolume>> slices;
	slices.reserve(slicePaths.size());
	for (const auto& path : slicePaths)
	{
		slices.emplace_back(loadSingleFile(path));
	}

	const auto& reference = *slices.front();
	const int width = reference.ImageData->GetDimensions()[0];
	const int height = reference.ImageData->GetDimensions()[1];

	std::vector<std::pair<double, std::shared_ptr<DicomVolume>>> sortedSlices;
	sortedSlices.reserve(slices.size());
	for (const auto& slice : slices)
	{
		const double position = slice->Geometry.Origin[0] * reference.Geometry.NormalDirection[0] +
			slice->Geometry.Origin[1] * reference.Geometry.NormalDirection[1] +
			slice->Geometry.Origin[2] * reference.Geometry.NormalDirection[2];
		sortedSlices.emplace_back(position, slice);
	}
	std::sort(sortedSlices.begin(), sortedSlices.end(),
	          [](const auto& lhs, const auto& rhs) { return lhs.first < rhs.first; });

        auto volume = std::make_shared<DicomVolume>();
        volume->Geometry = reference.Geometry;
        volume->PixelInfo = reference.PixelInfo;
        volume->Metadata = reference.Metadata;
        volume->NumberOfFrames = static_cast<int>(sortedSlices.size());
        normalizeDirections(volume->Geometry);
        populateDirectionMatrixInternal(*volume);

        auto* referencePointData = reference.ImageData->GetPointData();
        auto* referenceScalars = referencePointData ? referencePointData->GetScalars() : nullptr;
        if (!referenceScalars)
        {
                throw std::runtime_error("Reference slice missing scalar data while assembling volume.");
        }
        const int referenceScalarType = referenceScalars->GetDataType();

        if (sortedSlices.size() >= 2)
        {
                const double spacing =
                        std::abs(sortedSlices[1].first - sortedSlices.front().first);
                if (spacing > epsilon)
                {
                        volume->Geometry.Spacing[2] = spacing;
                }
        }
        allocateImageData(*volume, width, height, volume->NumberOfFrames, referenceScalarType);

        for (int index = 0; index < volume->NumberOfFrames; ++index)
        {
                const auto& sliceVolume = *sortedSlices[index].second;
                auto* sliceScalars = sliceVolume.ImageData->GetPointData() ?
                        sliceVolume.ImageData->GetPointData()->GetScalars() : nullptr;
                if (!sliceScalars)
                {
                        throw std::runtime_error("Slice image data missing scalars while assembling volume.");
                }

                switch (sliceScalars->GetDataType())
                {
                case VTK_UNSIGNED_CHAR:
                        copyFrameData(static_cast<const unsigned char*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                case VTK_CHAR:
                        copyFrameData(static_cast<const signed char*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                case VTK_UNSIGNED_SHORT:
                        copyFrameData(static_cast<const unsigned short*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                case VTK_SHORT:
                        copyFrameData(static_cast<const signed short*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                case VTK_UNSIGNED_INT:
                        copyFrameData(static_cast<const Uint32*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                case VTK_INT:
                        copyFrameData(static_cast<const Sint32*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                case VTK_FLOAT:
                        copyFrameData(static_cast<const float*>(sliceVolume.ImageData->GetScalarPointer()),
                                      volume->ImageData,
                                      index,
                                      volume->PixelInfo,
                                      width,
                                      height);
                        break;
                default:
                        throw std::runtime_error("Unsupported scalar type while assembling DICOM volume.");
                }
        }

        volume->PixelInfo.RescaleSlope = 1.0;
	volume->PixelInfo.RescaleIntercept = 0.0;

	return volume;
}

void asclepios::core::DicomVolumeLoader::populateDirectionMatrix(DicomVolume& volume)
{
	populateDirectionMatrixInternal(volume);
}
