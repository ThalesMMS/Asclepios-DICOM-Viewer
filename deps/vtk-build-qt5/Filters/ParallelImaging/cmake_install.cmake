# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkFiltersParallelImaging-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkFiltersParallelImaging-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkFiltersParallelImaging-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkFiltersParallelImaging-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/ParallelImaging/CMakeFiles/vtkFiltersParallelImaging.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging/vtkPComputeHistogram2DOutliers.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging/vtkPExtractHistogram2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging/vtkPPairwiseExtractHistogram2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging/vtkExtractPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging/vtkMemoryLimitImageDataStreamer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/ParallelImaging/vtkTransmitImageDataPiece.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/ParallelImaging/vtkFiltersParallelImagingModule.h"
    )
endif()

