# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkhdf5-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkhdf5-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkhdf5-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkhdf5-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkhdf5/src" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/hdf5.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5api_adpt.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5public.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/vtk_hdf5_mangle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Apkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Apublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5ACpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5ACpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Bpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Bpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5B2pkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5B2public.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Cpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Cpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Dpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Dpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Epkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Epublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5EApkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Fpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Fpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FApkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDcore.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDdirect.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDfamily.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDlog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmpi.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmpio.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDmulti.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDsec2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDstdio.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FDwindows.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FSpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5FSpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Gpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Gpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5HFpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5HFpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5HGpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5HGpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5HLpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5HLpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ipkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ipublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Lpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Lpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5MMpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5MPpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Opkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Opublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Oshared.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ppkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Ppublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5PBpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5PLextern.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5PLpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5PLpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Rpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Rpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Spkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Spublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5SMpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Tpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Tpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Zpkg.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Zpublic.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/vtk_hdf5_mangle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Edefin.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Einit.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Epubgen.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5Eterm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5version.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/hdf5/vtkhdf5/src/H5overflow.h"
    )
endif()

