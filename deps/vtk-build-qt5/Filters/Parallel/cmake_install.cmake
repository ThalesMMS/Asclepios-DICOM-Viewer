# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkFiltersParallel-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkFiltersParallel-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkFiltersParallel-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkFiltersParallel-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Parallel/CMakeFiles/vtkFiltersParallel.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkAggregateDataSetFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkAngularPeriodicFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkCollectGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkCollectPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkCollectTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkCutMaterial.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkDuplicatePolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkExtractCTHPart.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkIntegrateAttributes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPassThroughFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPCellDataToPointData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPeriodicFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPExtractDataArraysOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPExtractSelectedArraysOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPieceRequestFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPieceScalars.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPipelineSize.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPKdTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPMaskPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPOutlineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPPolyDataNormals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPProbeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPProjectSphereFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPReflectionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPResampleFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkProcessIdScalars.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPSphereSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkRemoveGhosts.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkUnstructuredGridGhostCellsGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Parallel/vtkPExtractArraysOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Parallel/vtkFiltersParallelModule.h"
    )
endif()

