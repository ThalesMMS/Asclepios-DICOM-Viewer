# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkArcParallelEdgeStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkAreaLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkAreaLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkAssignCoordinates.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkAssignCoordinatesLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkAttributeClustering2DLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkBoxLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCirclePackFrontChainLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCirclePackLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCirclePackLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCirclePackToPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCircularLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkClustering2DLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCommunity2DLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkConeLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkConstrained2DLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkCosmicTreeLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkEdgeLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkEdgeLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkFast2DLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkForceDirectedLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkGeoEdgeStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkGeoMath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkGraphLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkGraphLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkIncrementalForceLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkKCoreLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkPassThroughEdgeStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkPassThroughLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkPerturbCoincidentVertices.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkRandomLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkSimple2DLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkSimple3DCirclesStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkSliceAndDiceLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkSpanTreeLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkSplineGraphEdges.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkSquarifyLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkStackedTreeLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkTreeLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkTreeMapLayout.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkTreeMapLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkTreeMapToPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkTreeOrbitLayoutStrategy.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/vtkTreeRingToPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Infovis/Layout/vtkInfovisLayoutModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkInfovisLayout-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkInfovisLayout-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkInfovisLayout-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkInfovisLayout-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkInfovisLayout-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkInfovisLayout-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkInfovisLayout-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkInfovisLayout-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkInfovisLayout" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Infovis/Layout/LICENSE")
endif()

