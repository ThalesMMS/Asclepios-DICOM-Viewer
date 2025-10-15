# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkInteractionStyle-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkInteractionStyle-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkInteractionStyle-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkInteractionStyle-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Interaction/Style/CMakeFiles/vtkInteractionStyle.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleDrawPolygon.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleFlight.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleJoystickActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleJoystickCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleMultiTouchCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleRubberBand2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleRubberBand3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleRubberBandPick.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleRubberBandZoom.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleTerrain.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleTrackballActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleTrackballCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleTrackball.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleUnicam.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleUser.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkInteractorStyleSwitch.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Style/vtkParallelCoordinatesInteractorStyle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Interaction/Style/vtkInteractionStyleObjectFactory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Interaction/Style/vtkInteractionStyleModule.h"
    )
endif()

