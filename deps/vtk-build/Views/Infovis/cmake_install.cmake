# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkApplyColors.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkApplyIcons.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkDendrogramItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkGraphItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkGraphLayoutView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkHeatmapItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkHierarchicalGraphPipeline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkHierarchicalGraphView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkIcicleView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkInteractorStyleAreaSelectHover.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkInteractorStyleTreeMapHover.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkParallelCoordinatesHistogramRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkParallelCoordinatesRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkParallelCoordinatesView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkRenderedGraphRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkRenderedHierarchyRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkRenderedRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkRenderedSurfaceRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkRenderedTreeAreaRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkRenderView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkSCurveSpline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkTanglegramItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkTreeAreaView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkTreeHeatmapItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkTreeMapView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkTreeRingView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/vtkViewUpdater.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Views/Infovis/vtkViewsInfovisModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkViewsInfovis-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkViewsInfovis-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkViewsInfovis-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkViewsInfovis-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkViewsInfovis-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkViewsInfovis-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkViewsInfovis-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkViewsInfovis-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkViewsInfovis" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Infovis/LICENSE")
endif()

