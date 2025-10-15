# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkAbstractGridConnectivity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkAttributeSmoothingFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkDataSetSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkExplicitStructuredGridSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkImageDataGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkImageDataToUniformGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkMarkBoundaryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkProjectSphereFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkRecoverGeometryWireframe.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkRectilinearGridPartitioner.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredAMRNeighbor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridConnectivity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredGridPartitioner.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredNeighbor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Geometry/vtkFiltersGeometryModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersGeometry-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersGeometry-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersGeometry-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersGeometry-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersGeometry-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersGeometry-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersGeometry-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersGeometry-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersGeometry" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Geometry/LICENSE")
endif()

