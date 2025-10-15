# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkCompositeDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkCompositeDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkDataObjectReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkDataObjectWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkDataSetReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkDataSetWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkGenericDataObjectReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkGenericDataObjectWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkGraphReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkGraphWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkPixelExtentIO.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkPolyDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkPolyDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkRectilinearGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkRectilinearGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkSimplePointsReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkSimplePointsWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkStructuredGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkStructuredGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkStructuredPointsReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkStructuredPointsWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkTableReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkTableWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkTreeReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkTreeWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkUnstructuredGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Legacy/vtkUnstructuredGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/IO/Legacy/vtkIOLegacyModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkIOLegacy-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkIOLegacy-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkIOLegacy-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkIOLegacy-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkIOLegacy-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkIOLegacy-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkIOLegacy-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkIOLegacy-9.3.dll")
  endif()
endif()

