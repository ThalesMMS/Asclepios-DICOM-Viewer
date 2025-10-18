#pragma once

#include <memory>
#include <QString>

#include <vtkVolume.h>
#include <vtkBoxWidget2.h>
#include <vtkSmartVolumeMapper.h>
#include "transferfunction.h"
#include "vtkboxwidget3dcallback.h"
#include "vtkwidget3dinteractorstyle.h"
#include "vtkwidgetbase.h"
#include "dicomvolume.h"

namespace asclepios::gui
{
	class Widget3D;

	class vtkWidget3D final : public vtkWidgetBase
	{
	public:
		friend class Widget3D;
		vtkWidget3D() { initWidget(); };
		~vtkWidget3D() = default;
		//getters
		[[nodiscard]] vtkSmartVolumeMapper* getvtkWidget3DSmartVolumeMapper() const { return m_mapper; }
		[[nodiscard]] bool hasRenderableVolume() const { return m_volumeData && m_volumeData->ImageData; }
		[[nodiscard]] QString lastVolumeError() const { return m_lastVolumeError; }

		//setters
		void setInteractor(const vtkSmartPointer<vtkRenderWindowInteractor>& t_interactor) override { m_interactor = t_interactor; }
        bool composeAndRenderVolume(const std::shared_ptr<core::DicomVolume>& volume,
                const QString& initialFailureReason = QString());
		void setFilter(const QString& t_filePath);
		void render() override;
		void activateBoxWidget(const bool& t_flag);
		void updateFilter() const;

	private:
		std::unique_ptr<TransferFunction> m_transferFunction = {};
		vtkSmartPointer<vtkWidget3DInteractorStyle> m_interactorStyle = {};
		vtkSmartPointer<vtkSmartVolumeMapper> m_mapper;
		vtkSmartPointer<vtkRenderer> m_renderer;
		vtkSmartPointer<vtkVolume> m_volume;
		vtkSmartPointer<vtkBoxWidget2> m_boxWidget;
		vtkSmartPointer<vtkBoxWidget3DCallback> m_boxWidgetCallback = {};
        vtkRenderWindowInteractor* m_interactor = {};
        std::shared_ptr<core::DicomVolume> m_volumeData = {};

		void initWidget();
		void initBoxWidget();
		void initBoxWidgetCallback();
		void initInteractorStyle();
        void setVolumeMapperBlend() const;
		std::shared_ptr<core::DicomVolume> acquireVolume(QString* failureReason = nullptr) const;
		[[nodiscard]] std::tuple<int, int> getWindowLevel(const std::shared_ptr<core::DicomVolume>& volume) const;
		void applyWindowLevelToTransferFunction(int window, int level);
		QString m_lastVolumeError = {};
	};
}
