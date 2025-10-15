# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkAutoCorrelativeStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkBivariateLinearTableThreshold.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkComputeQuantiles.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkComputeQuartiles.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkContingencyStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkCorrelativeStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkDescriptiveStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkExtractFunctionalBagPlot.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkExtractHistogram.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkHighestDensityRegionsStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkKMeansDistanceFunctor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkKMeansDistanceFunctorCalculator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkKMeansStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkLengthDistribution.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkMultiCorrelativeStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkOrderStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkPCAStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkStatisticsAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkStrahlerMetric.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkStreamingStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Statistics/vtkFiltersStatisticsModule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/vtkStatisticsAlgorithmPrivate.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersStatistics-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersStatistics-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersStatistics-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersStatistics-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersStatistics-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersStatistics-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersStatistics-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersStatistics-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersStatistics" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/LICENSE"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/LICENSE"
    )
endif()

