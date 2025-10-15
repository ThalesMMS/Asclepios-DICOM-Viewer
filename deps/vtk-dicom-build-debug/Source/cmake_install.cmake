# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Source

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug")
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
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/lib/Debug/vtkDICOM-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/lib/Release/vtkDICOM-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/lib/MinSizeRel/vtkDICOM-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/lib/RelWithDebInfo/vtkDICOM-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMConfig.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMModule.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMMetaData.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMDictionary.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMFilePath.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMFile.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMFileDirectory.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMTag.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMTagPath.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMVR.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMVM.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMCharacterSet.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMCharacterSetTables.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMDataElement.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMDictHash.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMDictEntry.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMDictPrivate.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMDirectory.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMFileSorter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMImageCodec.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMSCGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMCTGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMMRGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMParser.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMCompiler.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMReader.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMSliceSorter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMSequence.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMItem.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMSorter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMReferenceCount.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMUtilities.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMUtilitiesUIDTable.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMValue.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMWriter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMAlgorithm.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMLookupTable.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMApplyPalette.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMApplyRescale.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMToRAS.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMCTRectifier.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMMetaDataAdapter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkDICOMUIDGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkNIFTIHeader.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkNIFTIReader.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkNIFTIWriter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include/vtkScancoCTReader.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/include" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/Source/vtkDICOMConfig.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/Source/vtkDICOMModule.h"
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
    )
endif()

