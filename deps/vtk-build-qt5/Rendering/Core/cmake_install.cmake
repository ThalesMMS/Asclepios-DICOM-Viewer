# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-install-qt5-debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkRenderingCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkRenderingCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkRenderingCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkRenderingCore-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/Core/CMakeFiles/vtkRenderingCore.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGPUInfoListArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkNoise200x200.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPythagoreanQuadruples.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRayCastStructures.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderingCoreEnums.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTDxMotionEventInfo.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractMapper3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractVolumeMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkActor2DCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkActor2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkActorCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAssembly.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkBackgroundColorMonitor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkBillboardTextActor3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCameraActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCameraInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCellCenterDepthSort.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCIEDE2000.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkColorTransferFunction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCompositeDataDisplayAttributes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCompositeDataDisplayAttributesLegacy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCompositePolyDataMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCoordinate.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCullerCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCuller.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkDataSetMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkDiscretizableColorTransferFunction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkDistanceToCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkFollower.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkFrameBufferObjectBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkFrustumCoverageCuller.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkFXAAOptions.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGenericRenderWindowInteractor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGenericVertexAttributeMapping.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGlyph3DMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGPUInfo.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGPUInfoList.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGraphicsFactory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGraphMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkGraphToGlyphs.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkHardwareSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkHierarchicalPolyDataMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkImageActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkImageMapper3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkImageMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkImageProperty.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkImageSlice.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkImageSliceMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkInteractorEventRecorder.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkInteractorObserver.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLabeledContourMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLightActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLightCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLight.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLightKit.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLogLookupTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLookupTableWithEnabling.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkMapArrayValues.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkMapper2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkMapperCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkObserverMediator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPointGaussianMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPolyDataMapper2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPolyDataMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkProp3DCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkProp3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkProp3DFollower.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPropAssembly.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPropCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkProp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkProperty2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkProperty.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRendererCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRendererDelegate.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRendererSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderState.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderTimerLog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderWindowCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderWindow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderWindowInteractor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderWindowInteractor3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkSelectVisiblePoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkShaderDeviceAdapter2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkSkybox.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTextActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTextActor3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTexture.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTexturedActor2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTransformCoordinateSystems.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTransformInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTupleInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkViewDependentErrorMetric.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkViewport.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkVisibilitySort.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkVolumeCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkVolume.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkVolumeProperty.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkWindowLevelLookupTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkWindowToImageFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAssemblyNode.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAssemblyPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAssemblyPaths.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAreaPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractPropPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPropPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPickingManager.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkLODProp3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkWorldPointPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkCellPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkPointPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderedAreaPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkScenePicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkInteractorStyle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkInteractorStyleSwitchBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkInteractorStyle3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTDxInteractorStyle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTDxInteractorStyleCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTDxInteractorStyleSettings.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkStringToImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTextMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTextProperty.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTextPropertyCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkTextRenderer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractInteractionDevice.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkAbstractRenderDevice.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Core/vtkRenderWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/Core/vtkRenderingCoreModule.h"
    )
endif()

