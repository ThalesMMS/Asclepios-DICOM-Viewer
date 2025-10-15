# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkGeovisCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkGeovisCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkGeovisCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkGeovisCore-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Geovis/Core/CMakeFiles/vtkGeovisCore.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoAdaptiveArcs.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoAlignedImageRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoAlignedImageSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoArcs.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoAssignCoordinates.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoFileImageSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoFileTerrainSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoGlobeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoGraticule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoImageNode.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoInteractorStyle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoProjectionSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoRandomGraphSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoSampleArcs.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoSphereTransform.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoTerrain.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoTerrain2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoTerrainNode.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoTreeNode.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoTreeNodeCache.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGlobeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkCompassRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkCompassWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoProjection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Geovis/Core/vtkGeoTransform.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Geovis/Core/vtkGeovisCoreModule.h"
    )
endif()

