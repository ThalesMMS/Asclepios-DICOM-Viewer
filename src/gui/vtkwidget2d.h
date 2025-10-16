#pragma once

#include "vtkwidgetbase.h"
#include "vtkwidgetdicom.h"
#include "vtkwidgetoverlay.h"

#include <vtkImageImport.h>

#include <cstdint>
#include <vector>

enum class transformationType;

namespace asclepios::gui
{
	class vtkWidget2D final : public vtkWidgetBase
	{
	public:
		vtkWidget2D() = default;
		~vtkWidget2D() = default;

		//getters
		[[nodiscard]] vtkSmartPointer<vtkDICOMReader> getImageReader() const { return m_imageReader; }
		[[nodiscard]] vtkSmartPointer<vtkWidgetDICOM> getDCMWidget() const { return m_dcmWidget; }
		[[nodiscard]] vtkSmartPointer<vtkRenderWindowInteractor> getInteractor() const { return m_interactor; }

		//setters
		void setImageReader(const  vtkSmartPointer<vtkDICOMReader>& t_reader) { m_imageReader = t_reader; }
		void setInteractor(const vtkSmartPointer<vtkRenderWindowInteractor>& t_interactor) override;

		void initImageReader();
		void render() override;
		void applyTransformation(const transformationType& t_type);
		void updateOverlayZoomFactor();
		void updateOverlayHUValue(const int& x, const int& y);
		void updateOvelayImageNumber(const int& t_current, const int& t_max, const int& t_numberOfSeries);
		void updateOverlayWindowLevelApply(const int& t_window, const int& t_level, const bool& t_apply);
		void resetOverlay();

        private:
                vtkSmartPointer<vtkDICOMReader> m_imageReader = {};
                vtkSmartPointer<vtkWidgetDICOM> m_dcmWidget = {};
                vtkSmartPointer<vtkRenderWindowInteractor> m_interactor = {};
                vtkSmartPointer<vtkRenderer> m_vtkWidgetOverlayRenderer = {};
                std::unique_ptr<vtkWidgetOverlay> m_widgetOverlay = {};
                bool m_colorsInverted = false;
                bool m_usingFallbackDecoder = false;
                vtkSmartPointer<vtkImageImport> m_fallbackImporter = {};
                std::vector<unsigned char> m_fallbackByteBuffer = {};
                std::vector<unsigned short> m_fallbackWordBuffer = {};
                std::vector<std::int8_t> m_fallbackSignedByteBuffer = {};
                std::vector<std::int16_t> m_fallbackSignedWordBuffer = {};

                void initRenderingLayers();
                /**
                 * Returns false when no renderable data could be configured for the widget.
                 */
                bool initWidgetDICOM();
                void createvtkWidgetOverlay();
                void invertColors();
                void fitImage() const;
                void refreshOverlayInCorner(const int& t_corner);
                void updateOverlayMouseCoordinates(const int& x, const int& y) const;
                [[nodiscard]] std::string computeHUValueInPixel(const int& t_pixel) const;
                [[nodiscard]] double computeScale() const;
                bool ensureImageDataAvailability();
                bool isReaderOutputValid() const;
                bool buildFallbackImage();
                void resetFallback();
                bool hasValidScalars(vtkImageData* image) const;
        };
}
