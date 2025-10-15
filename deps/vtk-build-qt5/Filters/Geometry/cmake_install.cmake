# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkFiltersGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkFiltersGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkFiltersGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkFiltersGeometry-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Geometry/CMakeFiles/vtkFiltersGeometry.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkImageDataGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkImageDataToUniformGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkProjectSphereFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkDataSetSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkAbstractGridConnectivity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkDataSetGhostGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkRectilinearGridPartitioner.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredAMRNeighbor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridConnectivity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridGhostDataGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridPartitioner.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredNeighbor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkUniformGridGhostDataGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Geometry/vtkFiltersGeometryModule.h"
    )
endif()

