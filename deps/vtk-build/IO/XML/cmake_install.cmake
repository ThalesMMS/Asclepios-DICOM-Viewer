# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkRTXMLPolyDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLCompositeDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLCompositeDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLDataObjectWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLDataSetWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLFileReadTester.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLGenericDataObjectReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLHierarchicalDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLHyperTreeGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLHyperTreeGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLImageDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLImageDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLMultiBlockDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLMultiGroupDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPDataObjectReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPHyperTreeGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPImageDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPPolyDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPRectilinearGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPStructuredDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPStructuredGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPTableReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPartitionedDataSetCollectionReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPartitionedDataSetReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPolyDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLPolyDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLRectilinearGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLRectilinearGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLStructuredDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLStructuredDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLStructuredGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLStructuredGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLTableReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLTableWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLUniformGridAMRReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLUnstructuredDataReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLUnstructuredGridReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLWriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLWriterBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/vtkXMLWriterC.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/IO/XML/vtkIOXMLModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkIOXML-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkIOXML-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkIOXML-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkIOXML-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkIOXML-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkIOXML-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkIOXML-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkIOXML-9.3.dll")
  endif()
endif()

