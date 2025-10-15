# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkChartsCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkChartsCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkChartsCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkChartsCore-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Charts/Core/CMakeFiles/vtkChartsCore.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkAxis.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkAxisExtended.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkCategoryLegend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChart.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartBox.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartHistogram2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartLegend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartMatrix.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartParallelCoordinates.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartPie.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartXY.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkChartXYZ.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkColorLegend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkColorTransferControlPointsItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkColorTransferFunctionItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkCompositeControlPointsItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkContextArea.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkContextPolygon.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkControlPointsItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkInteractiveArea.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkLookupTableItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPiecewiseFunctionItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPiecewisePointHandleItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlot.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlot3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotArea.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotBag.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotBar.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotBox.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotFunctionalBag.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotHistogram2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotLine.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotLine3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotParallelCoordinates.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotPie.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotPoints3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotStacked.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkPlotSurface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkScalarsToColorsItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Charts/Core/vtkScatterPlotMatrix.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Charts/Core/vtkChartsCoreModule.h"
    )
endif()

