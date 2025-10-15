# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtklibharu/include" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_types.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_consts.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_version.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_annotation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_catalog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_conf.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_destination.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_doc.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_encoder.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_encrypt.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_encryptdict.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_error.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_ext_gstate.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_font.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_fontdef.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_gstate.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_image.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_info.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_list.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_mmgr.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_objects.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_outline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_pages.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_page_label.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_streams.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_u3d.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_utils.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_pdfa.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_3dmeasure.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/hpdf_exdata.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libharu/vtklibharu/include/vtk_haru_mangle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libharu/vtklibharu/include/hpdf_config.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ThirdParty/libharu/vtklibharu/src/cmake_install.cmake")

endif()

