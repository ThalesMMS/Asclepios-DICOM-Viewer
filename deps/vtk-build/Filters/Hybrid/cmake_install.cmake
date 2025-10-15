# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkAdaptiveDataSetSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkBSplineTransform.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkDepthSortPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkDSPFilterDefinition.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkDSPFilterGroup.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkEarthSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkFacetReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkForceTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkGenerateTimeSteps.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkGreedyTerrainDecimation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkGridTransform.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkImageToPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkImplicitModeller.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkPCAAnalysisFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkPolyDataSilhouette.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkProcrustesAlignmentFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkProjectedTerrainPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkRenderLargeImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTemporalArrayOperatorFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTemporalDataSetCache.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTemporalFractal.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTemporalInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTemporalShiftScale.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTemporalSnapToTimeStep.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkTransformToGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/vtkWeightedTransformFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Hybrid/vtkFiltersHybridModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersHybrid-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersHybrid-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersHybrid-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersHybrid-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersHybrid-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersHybrid-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersHybrid-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersHybrid-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersHybrid" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Hybrid/LICENSE")
endif()

