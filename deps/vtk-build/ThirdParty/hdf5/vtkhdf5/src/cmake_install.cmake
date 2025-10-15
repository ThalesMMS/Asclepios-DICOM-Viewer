# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtkhdf5/src" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/hdf5.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5api_adpt.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5public.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/vtk_hdf5_mangle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Apublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5ACpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Cpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Dpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Epublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5ESdevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5ESpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Fpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDcore.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDdevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDdirect.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDfamily.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDhdfs.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDlog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmirror.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmpi.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmpio.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmulti.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDros3.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDs3comms.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDsec2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDsplitter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDstdio.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDwindows.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Gpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Idevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ipublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ldevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Lpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Mpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5MMpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Opublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ppublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5PLextern.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5PLpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Rpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Spublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Tdevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Tpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5TSdevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5VLconnector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5VLconnector_passthru.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5VLnative.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5VLpassthru.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5VLpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Zdevelop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Zpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Edefin.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Einit.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Epubgen.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Eterm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5version.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5overflow.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkhdf5-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkhdf5-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkhdf5-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkhdf5-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkhdf5-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkhdf5-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkhdf5-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkhdf5-9.3.dll")
  endif()
endif()

