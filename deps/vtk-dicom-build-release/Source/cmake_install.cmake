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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/Debug/vtkDICOM-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/Release/vtkDICOM-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/MinSizeRel/vtkDICOM-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib/vtkDICOM-8.2.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/lib/RelWithDebInfo/vtkDICOM-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMConfig.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMModule.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMMetaData.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMDictionary.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMFilePath.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMFile.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMFileDirectory.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMTag.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMTagPath.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMVR.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMVM.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMCharacterSet.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMCharacterSetTables.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMDataElement.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMDictHash.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMDictEntry.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMDictPrivate.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMDirectory.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMFileSorter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMImageCodec.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMSCGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMCTGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMMRGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMParser.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMCompiler.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMReader.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMSliceSorter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMSequence.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMItem.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMSorter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMReferenceCount.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMUtilities.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMUtilitiesUIDTable.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMValue.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMWriter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMAlgorithm.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMLookupTable.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMApplyPalette.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMApplyRescale.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMToRAS.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMCTRectifier.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMMetaDataAdapter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkDICOMUIDGenerator.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkNIFTIHeader.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkNIFTIReader.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkNIFTIWriter.h;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include/vtkScancoCTReader.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install/include" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/Source/vtkDICOMConfig.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build/Source/vtkDICOMModule.h"
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

