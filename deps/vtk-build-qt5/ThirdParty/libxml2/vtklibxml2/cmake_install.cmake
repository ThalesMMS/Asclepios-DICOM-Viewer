# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtklibxml2-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtklibxml2-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtklibxml2-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtklibxml2-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtklibxml2/libxml" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlversion.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/DOCBparser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/HTMLparser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/HTMLtree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/SAX.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/SAX2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/c14n.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/catalog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/chvalid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/debugXML.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/dict.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/encoding.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/entities.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/globals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/hash.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/list.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/nanoftp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/nanohttp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/parser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/parserInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/pattern.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/relaxng.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/schemasInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/schematron.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/threads.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/tree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/uri.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/valid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/vtk_libxml2_mangle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xinclude.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xlink.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlIO.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlautomata.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlerror.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlexports.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlmemory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlmodule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlreader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlregexp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlsave.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlschemas.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlschemastypes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlstring.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlunicode.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xmlwriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xpath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xpathInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libxml2/vtklibxml2/libxml/xpointer.h"
    )
endif()

