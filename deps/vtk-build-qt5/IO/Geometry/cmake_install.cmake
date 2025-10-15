# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkIOGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkIOGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkIOGeometry-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkIOGeometry-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/Geometry/CMakeFiles/vtkIOGeometry.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkAVSucdReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkBYUReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkBYUWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkChacoReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkFacetWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkFLUENTReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkGAMBITReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkGaussianCubeReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkHoudiniPolyDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkIVWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkMCubesReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkMCubesWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkMFIXReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkMoleculeReaderBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkOBJReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkOBJWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkOpenFOAMReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkParticleReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkPDBReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkProStarReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkPTSReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkSTLReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkSTLWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkTecplotReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkWindBladeReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Geometry/vtkXYZMolReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/Geometry/vtkIOGeometryModule.h"
    )
endif()

