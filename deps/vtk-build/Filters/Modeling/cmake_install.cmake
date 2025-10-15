# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkAdaptiveSubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkBandedPolyDataContourFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkButterflySubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkCollisionDetectionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkContourLoopExtraction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkCookieCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkDijkstraGraphGeodesicPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkDijkstraImageGeodesicPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkFillHolesFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkFitToHeightMapFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkGeodesicPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkGraphGeodesicPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkHausdorffDistancePointSetFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkHyperTreeGridOutlineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkImageDataOutlineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkImprintFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkLinearCellExtrusionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkLinearExtrusionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkLinearSubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkLoopSubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkOutlineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkPolyDataPointSampler.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkProjectedTexture.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkQuadRotationalExtrusionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkRibbonFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkRotationalExtrusionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkRuledSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkSectorSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkSelectEnclosedPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkSelectPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkSpherePuzzle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkSpherePuzzleArrows.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkSubdivideTetra.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkTrimmedExtrusionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Modeling/vtkVolumeOfRevolutionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Modeling/vtkFiltersModelingModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersModeling-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersModeling-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersModeling-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersModeling-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersModeling-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersModeling-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersModeling-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersModeling-9.3.dll")
  endif()
endif()

