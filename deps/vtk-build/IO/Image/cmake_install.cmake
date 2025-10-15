# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkBMPReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkBMPWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkDEMReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkDICOMImageReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkGESignaReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkHDRReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageExport.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageImport.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageImportExecutive.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageReader2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageReader2Collection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageReader2Factory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkImageWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkJPEGReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkJPEGWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkJSONImageWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkMedicalImageProperties.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkMedicalImageReader2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkMetaImageReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkMetaImageWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkMRCReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkNIFTIImageHeader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkNIFTIImageReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkNIFTIImageWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkNrrdReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkOMETIFFReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkPNGReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkPNGWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkPNMReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkPNMWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkPostScriptWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkSEPReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkSLCReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkTGAReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkTIFFReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkTIFFWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkVolume16Reader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Image/vtkVolumeReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/IO/Image/vtkIOImageModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkIOImage-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkIOImage-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkIOImage-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkIOImage-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkIOImage-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkIOImage-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkIOImage-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkIOImage-9.3.dll")
  endif()
endif()

