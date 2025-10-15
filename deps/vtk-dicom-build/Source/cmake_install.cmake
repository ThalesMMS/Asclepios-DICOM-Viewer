# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install")
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
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMMetaData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMDictionary.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMFilePath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMFile.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMFileDirectory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMTag.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMTagPath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMVR.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMVM.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMCharacterSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMCharacterSetTables.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMDataElement.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMDictHash.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMDictEntry.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMDictPrivate.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMDirectory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMFileSorter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMImageCodec.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMSCGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMCTGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMMRGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMParser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMCompiler.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMSliceSorter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMSequence.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMItem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMSorter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMReferenceCount.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMUtilities.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMUtilitiesUIDTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMValue.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMLookupTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMApplyPalette.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMApplyRescale.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMToRAS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMCTRectifier.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMMetaDataAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkDICOMUIDGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkNIFTIHeader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkNIFTIReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkNIFTIWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source/vtkScancoCTReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/Source/vtkDICOMConfig.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/Source/vtkDICOMModule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/Source/vtkDICOMModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/Debug/vtkDICOM-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/Release/vtkDICOM-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/MinSizeRel/vtkDICOM-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/RelWithDebInfo/vtkDICOM-9.3.lib")
  endif()
endif()

