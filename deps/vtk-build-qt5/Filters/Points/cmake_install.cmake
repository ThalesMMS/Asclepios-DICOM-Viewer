# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkFiltersPoints-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkFiltersPoints-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkFiltersPoints-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkFiltersPoints-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Points/CMakeFiles/vtkFiltersPoints.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkBoundedPointSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkConnectedPointsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkDensifyPointCloudFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkEllipsoidalGaussianKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkEuclideanClusterExtraction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkExtractHierarchicalBins.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkExtractEnclosedPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkExtractPointCloudPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkExtractPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkExtractSurface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkFitImplicitFunction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkGaussianKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkGeneralizedKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkHierarchicalBinningFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkInterpolationKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkLinearKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkMaskPointsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPCACurvatureEstimation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPCANormalEstimation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPointCloudFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPointDensityFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPointInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPointInterpolator2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkPointOccupancyFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkProbabilisticVoronoiKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkRadiusOutlierRemoval.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkSPHInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkSPHCubicKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkSPHKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkSPHQuarticKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkSPHQuinticKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkShepardKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkSignedDistance.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkStatisticalOutlierRemoval.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkUnsignedDistance.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkVoxelGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkVoronoiKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/vtkWendlandQuinticKernel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Points/vtkFiltersPointsModule.h"
    )
endif()

