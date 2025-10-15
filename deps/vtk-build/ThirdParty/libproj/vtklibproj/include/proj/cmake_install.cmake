# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtklibproj/include/proj" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/util.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/metadata.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/common.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/crs.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/datum.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/coordinatesystem.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/coordinateoperation.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/io.hpp"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/libproj/vtklibproj/include/proj/nn.hpp"
    )
endif()

