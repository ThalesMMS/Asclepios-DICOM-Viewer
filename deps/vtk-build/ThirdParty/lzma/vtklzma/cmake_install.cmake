# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtklzma/src/liblzma/api" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/base.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/bcj.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/block.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/check.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/container.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/delta.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/filter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/hardware.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/index.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/index_hash.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/lzma12.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/stream_flags.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/version.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/vli.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/vtk_lzma_mangle.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtklzma-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtklzma-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtklzma-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtklzma-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtklzma-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtklzma-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtklzma-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtklzma-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtklzma/src/liblzma/api/" TYPE DIRECTORY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma")
endif()

