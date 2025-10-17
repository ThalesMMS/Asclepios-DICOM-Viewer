#pragma once

#include <vtkSmartPointer.h>

class vtkImageMapToWindowLevelColors;
class vtkWindowLevelLookupTable;

namespace asclepios::gui
{
	class WindowLevelFilter
	{
	public:
		WindowLevelFilter();
		~WindowLevelFilter();

		[[nodiscard]] vtkImageMapToWindowLevelColors* getWindowLevelColors() const { return m_windowLevelColors; }
		[[nodiscard]] bool getAreColorsInverted() const { return m_invert; }

		void setWindowLevelColors(vtkImageMapToWindowLevelColors* t_filter);
		void setAreColorsInverted(bool t_flag);
		void setWindowWidthCenter(int t_width, int t_center);

	private:
		vtkImageMapToWindowLevelColors* m_windowLevelColors = nullptr;
		vtkSmartPointer<vtkWindowLevelLookupTable> m_lookupTable = {};
		bool m_invert = false;
	};
}
