#pragma once

#include <array>
#include <limits>
#include <memory>
#include <tuple>

#include <vtkImageActor.h>
#include <vtkImageMapToWindowLevelColors.h>
#include <vtkImageSliceMapper.h>
#include <vtkInformation.h>
#include <vtkMatrix4x4.h>
#include <vtkObject.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRenderer.h>
#include <vtkSmartPointer.h>
#include <vtkTrivialProducer.h>

namespace asclepios::core
{
	struct DicomVolume;
}

namespace asclepios::gui
{
	class WindowLevelFilter;

	class vtkWidgetDICOM final : public vtkObject
	{
	public:
		static vtkWidgetDICOM* New();
		vtkTypeMacro(vtkWidgetDICOM, vtkObject);

		vtkWidgetDICOM();
		~vtkWidgetDICOM() override;

		[[nodiscard]] double getZoomFactor();
		[[nodiscard]] int getWindowWidth() const { return m_windowWidth; }
		[[nodiscard]] int getWindowCenter() const { return m_windowCenter; }

		void setVolume(const std::shared_ptr<core::DicomVolume>& t_volume);
		void setInvertColors(bool t_flag);
		void setWindowWidthCenter(int t_width, int t_center);
		void changeWindowWidthCenter(int t_width, int t_center);
		void setInitialWindowWidthCenter();

		void SetRenderWindow(vtkRenderWindow* renderWindow);
		[[nodiscard]] vtkRenderWindow* GetRenderWindow() const { return m_renderWindow; }
                [[nodiscard]] vtkRenderer* GetRenderer() const { return m_renderer; }
                [[nodiscard]] vtkImageActor* GetImageActor() const { return m_imageActor; }
                [[nodiscard]] std::array<double, 3> getLastSanitizedSpacing() const { return m_cachedSpacing; }
                [[nodiscard]] std::array<double, 3> getOriginalSpacing() const { return m_originalSpacing; }
                [[nodiscard]] bool hasOriginalSpacing() const { return m_hasOriginalSpacing; }

                void SetupInteractor(vtkRenderWindowInteractor* interactor);
                [[nodiscard]] vtkRenderWindowInteractor* GetInteractor() const { return m_interactor; }

		void Render();

		void SetSlice(int slice);
		[[nodiscard]] int GetSlice() const { return m_currentSlice; }
		[[nodiscard]] int GetSliceMin() const { return m_sliceMin; }
		[[nodiscard]] int GetSliceMax() const { return m_sliceMax; }

		void SetSliceOrientation(int orientation);
		void SetSliceOrientationToXY();
		void SetSliceOrientationToXZ();
		void SetSliceOrientationToYZ();
		[[nodiscard]] int GetSliceOrientation() const { return m_sliceOrientation; }

		void UpdateDisplayExtent();

		static constexpr int SLICE_ORIENTATION_YZ = 0;
		static constexpr int SLICE_ORIENTATION_XZ = 1;
		static constexpr int SLICE_ORIENTATION_XY = 2;

	private:
		std::shared_ptr<core::DicomVolume> m_volume = {};
		std::unique_ptr<WindowLevelFilter> m_windowLevelFilter = {};
                vtkSmartPointer<vtkImageMapToWindowLevelColors> m_windowLevelColors = {};
                vtkSmartPointer<vtkTrivialProducer> m_inputProducer = {};
                vtkSmartPointer<vtkImageActor> m_imageActor = {};
                vtkSmartPointer<vtkImageSliceMapper> m_sliceMapper = {};
                vtkSmartPointer<vtkRenderer> m_renderer = {};
                vtkRenderWindow* m_renderWindow = nullptr;
                vtkRenderWindowInteractor* m_interactor = nullptr;

		int m_windowWidth = 0;
		int m_windowCenter = 0;
		bool m_colorsInverted = false;

		int m_sliceOrientation = SLICE_ORIENTATION_XY;
		int m_currentSlice = 0;
                int m_sliceMin = 0;
                int m_sliceMax = 0;

                double m_lastClippingRange = -1.0;
                double m_lastAvgSpacing = -1.0;
                int m_lastSliceOrientation = -1;
                bool m_useSliceMapper = false;
                std::array<double, 3> m_cachedSpacing = {1.0, 1.0, 1.0};
                std::array<double, 3> m_originalSpacing = {1.0, 1.0, 1.0};
                std::array<double, 3> m_cachedCameraPosition = {std::numeric_limits<double>::quiet_NaN(),
                        std::numeric_limits<double>::quiet_NaN(),
                        std::numeric_limits<double>::quiet_NaN()};
                std::array<double, 3> m_cachedCameraFocalPoint = {std::numeric_limits<double>::quiet_NaN(),
                        std::numeric_limits<double>::quiet_NaN(),
                        std::numeric_limits<double>::quiet_NaN()};
                bool m_hasCachedSpacing = false;
                bool m_hasOriginalSpacing = false;
                bool m_hasCachedCamera = false;

                void applyDirectionMatrix();
                void updateScalarsForInversion();
                void setDefaultWindowLevelFromRange();
                [[nodiscard]] std::tuple<int, int> getImageActorDisplayValue();
                void updateSliceRange();
                void updateActorExtentWithInformation(vtkInformation* info);
                [[nodiscard]] vtkMatrix4x4* getDirectionMatrix() const;
                [[nodiscard]] vtkImageMapper3D* getImageMapper() const;
        };
}
