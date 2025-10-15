# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkCommonComputationalGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkCommonComputationalGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkCommonComputationalGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkCommonComputationalGeometry-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Common/ComputationalGeometry/CMakeFiles/vtkCommonComputationalGeometry.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkCardinalSpline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkKochanekSpline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricBoy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricCrossCap.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricDini.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricEnneper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricFunction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricKlein.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricMobius.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricRandomHills.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricRoman.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricSpline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricTorus.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricKuen.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricHenneberg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricBour.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h"
    )
endif()

