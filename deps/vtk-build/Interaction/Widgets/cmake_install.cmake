# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-install")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtk3DCursorRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtk3DCursorWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtk3DWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAbstractPolygonalHandleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAbstractSplineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAbstractWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAffineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAffineRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAffineWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAngleRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAngleRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAngleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAngleWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAxesTransformRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkAxesTransformWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBalloonRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBalloonWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBezierContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBiDimensionalRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBiDimensionalRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBiDimensionalWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBorderRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBorderWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBoundedPlanePointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBoxRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBoxWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBoxWidget2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkBrokenLineWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkButtonRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkButtonWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCamera3DRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCamera3DWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraHandleSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraOrientationWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraOrientationRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraPathRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraPathWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCameraWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCaptionRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCaptionWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCellCentersPointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCenteredSliderRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCenteredSliderWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCheckerboardRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCheckerboardWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkClosedSurfacePointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCompassRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCompassWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkConstrainedPointHandleRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkContinuousValueWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkContinuousValueWidgetRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkContourRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkContourWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCoordinateFrameRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCoordinateFrameWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkCurveRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDijkstraImageContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDisplaySizedImplicitPlaneWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDisplaySizedImplicitPlaneRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDistanceRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDistanceRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDistanceRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkDistanceWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkEllipsoidTensorProbeRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkEqualizerContextItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkEvent.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkFinitePlaneRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkFinitePlaneWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkFixedSizeHandleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkFocalPlaneContourRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkFocalPlanePointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkHandleRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkHandleWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkHoverWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImageActorPointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImageCroppingRegionsWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImageOrthoPlanes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImagePlaneWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImageTracerWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImplicitCylinderRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImplicitCylinderWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImplicitImageRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImplicitPlaneRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImplicitPlaneWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkImplicitPlaneWidget2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLightRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLightWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLinearContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLineWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLineWidget2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLogoRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkLogoWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkMagnifierRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkMagnifierWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkMeasurementCubeHandleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkOrientationMarkerWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkOrientationRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkOrientationWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkOrientedGlyphContourRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkOrientedGlyphFocalPlaneContourRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkOrientedPolygonalHandleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkParallelopipedRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkParallelopipedWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPlaneWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPlaybackRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPlaybackWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPointCloudRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPointCloudWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPointHandleRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPointHandleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPointWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolyDataContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolyDataPointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolyDataSourceWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolygonalHandleRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolygonalSurfaceContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolygonalSurfacePointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolyLineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkPolyLineWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkProgressBarRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkProgressBarWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkProp3DButtonRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkRectilinearWipeRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkRectilinearWipeWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorLineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorPicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorPolyDataAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorThickLineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkResliceCursorWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkScalarBarRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkScalarBarWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSeedRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSeedWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSliderRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSliderRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSliderRepresentation3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSliderWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSphereHandleRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSphereRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSphereWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSphereWidget2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSplineRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSplineWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkSplineWidget2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTensorProbeRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTensorProbeWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTensorRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTensorWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTerrainContourLineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTerrainDataPointPlacer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTextRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTexturedButtonRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTexturedButtonRepresentation2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkTextWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkWidgetCallbackMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkWidgetEvent.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkWidgetEventTranslator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkWidgetRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkWidgetSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/vtkXYPlotWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Interaction/Widgets/vtkInteractionWidgetsModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkInteractionWidgets-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkInteractionWidgets-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkInteractionWidgets-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkInteractionWidgets-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkInteractionWidgets-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkInteractionWidgets-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkInteractionWidgets-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkInteractionWidgets-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkInteractionWidgets" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/LICENSE")
endif()

