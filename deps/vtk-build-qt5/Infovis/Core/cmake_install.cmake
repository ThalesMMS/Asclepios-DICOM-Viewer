# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkInfovisCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkInfovisCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkInfovisCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkInfovisCore-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Infovis/Core/CMakeFiles/vtkInfovisCore.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkAddMembershipArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkAdjacencyMatrixToEdgeTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkArrayNorm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkArrayToTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkCollapseGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkCollapseVerticesByArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkContinuousScatterplot.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkDataObjectToTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkDotProductSimilarity.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkExtractSelectedTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkEdgeCenters.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkExpandSelectedGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkExtractSelectedGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkGenerateIndexArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkGraphHierarchicalBundleEdges.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkGroupLeafVertices.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkMergeColumns.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkMergeGraphs.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkMergeTables.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkMutableGraphHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkNetworkHierarchy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkPipelineGraphSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkPruneTreeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkRandomGraphSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkReduceTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkRemoveIsolatedVertices.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkSparseArrayToTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkStreamGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkStringToCategory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkStringToNumeric.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTableToArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTableToGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTableToSparseArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTableToTreeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkThresholdGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkThresholdTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTransferAttributes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTransposeMatrix.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTreeFieldAggregator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTreeDifferenceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkTreeLevelsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkVertexDegree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkRemoveHiddenData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Core/vtkKCoreDecomposition.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Infovis/Core/vtkInfovisCoreModule.h"
    )
endif()

