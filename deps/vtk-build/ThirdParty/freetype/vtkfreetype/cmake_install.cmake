# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkfreetype-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkfreetype-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkfreetype-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkfreetype-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkfreetype-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkfreetype-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkfreetype-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkfreetype-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtkfreetype/include" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/ft2build.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/vtk_freetype_mangle.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtkfreetype/include/freetype" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/freetype.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftadvanc.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftbbox.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftbdf.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftbitmap.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftbzip2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftcache.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftcid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftcolor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftdriver.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/fterrdef.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/fterrors.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftfntfmt.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftgasp.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftglyph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftgxval.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftgzip.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftimage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftincrem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftlcdfil.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftlist.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftlogging.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftlzw.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftmac.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftmm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftmodapi.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftmoderr.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftotval.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftoutln.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftparams.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftpfr.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftrender.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftsizes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftsnames.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftstroke.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftsynth.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftsystem.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/fttrigon.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/fttypes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ftwinfnt.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/t1tables.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/ttnameid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/tttables.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/tttags.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtkfreetype/include/freetype/config" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftconfig.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftheader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftmodule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftoption.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftstdlib.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/integer-types.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/mac-support.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/public-macros.h"
    )
endif()

