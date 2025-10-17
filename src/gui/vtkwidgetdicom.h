#pragma once

#include <memory>
#include <tuple>

#include <vtkImageViewer2.h>
#include <vtkSmartPointer.h>

#include "windowlevelfilter.h"
#include "dicomvolume.h"

namespace asclepios::gui
{
	class vtkWidgetDICOM final : public vtkImageViewer2
	{
	public:
		static vtkWidgetDICOM* New();
		vtkTypeMacro(vtkWidgetDICOM, vtkImageViewer2);

		vtkWidgetDICOM();
		~vtkWidgetDICOM() override = default;

		// getters
		[[nodiscard]] double getZoomFactor();
		[[nodiscard]] int getWindowWidth() const { return m_windowWidth; }
		[[nodiscard]] int getWindowCenter() const { return m_windowCenter; }

		// setters
		void setVolume(const std::shared_ptr<core::DicomVolume>& t_volume);
		void setInvertColors(bool t_flag);
		void setWindowWidthCenter(int t_width, int t_center);
		void setInitialWindowWidthCenter();
		void SetInputData(vtkImageData* in) override;
		void UpdateDisplayExtent();

		void changeWindowWidthCenter(int t_width, int t_center);

	private:
		std::shared_ptr<core::DicomVolume> m_volume = {};
		std::unique_ptr<WindowLevelFilter> m_windowLevelFilter = {};
		int m_windowWidth = 0;
		int m_windowCenter = 0;
		bool m_colorsInverted = false;
		double m_lastClippingRange = -1.0;
		double m_lastAvgSpacing = -1.0;
		int m_lastSliceOrientation = -1;

		void applyDirectionMatrix();
		void updateScalarsForInversion();
		void setMONOCHROME1WindowWidthCenter();
		void setMONOCHROME2WindowWidthCenter();
		void setDefaultWindowLevelFromRange();
		[[nodiscard]] std::tuple<int, int> getImageActorDisplayValue();
	};
}

