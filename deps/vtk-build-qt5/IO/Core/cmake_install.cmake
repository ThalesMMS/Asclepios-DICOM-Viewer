# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkIOCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkIOCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkIOCore-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkIOCore-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/Core/CMakeFiles/vtkIOCore.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkAbstractParticleWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkArrayReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkArrayWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkASCIITextCodec.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkBase64InputStream.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkBase64OutputStream.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkBase64Utilities.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkDataCompressor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkDelimitedTextWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkGlobFileNames.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkInputStream.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkJavaScriptDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkLZ4DataCompressor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkOutputStream.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkSortFileNames.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkTextCodec.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkTextCodecFactory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkUTF16TextCodec.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkUTF8TextCodec.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkAbstractPolyDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkZLibDataCompressor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkArrayDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkArrayDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkLZMADataCompressor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/vtkNumberToString.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/Core/vtkIOCoreModule.h"
    )
endif()

