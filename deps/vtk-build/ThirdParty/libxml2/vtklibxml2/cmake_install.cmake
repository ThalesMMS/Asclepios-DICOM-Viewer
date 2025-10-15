# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtklibxml2/include/libxml" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/c14n.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/catalog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/chvalid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/debugXML.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/dict.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/encoding.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/entities.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/globals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/hash.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLparser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLtree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/list.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/nanoftp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/nanohttp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/parser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/parserInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/pattern.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/relaxng.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/schemasInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/schematron.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/threads.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/tree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/uri.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/valid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/vtk_libxml2_mangle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xinclude.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xlink.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlIO.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlautomata.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlerror.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlexports.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmemory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmodule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlreader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlregexp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlsave.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemas.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemastypes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlstring.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlunicode.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlwriter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xpath.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xpathInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libxml2/vtklibxml2/include/libxml/xpointer.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtklibxml2-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtklibxml2-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtklibxml2-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtklibxml2-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtklibxml2-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtklibxml2-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtklibxml2-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtklibxml2-9.3.dll")
  endif()
endif()

