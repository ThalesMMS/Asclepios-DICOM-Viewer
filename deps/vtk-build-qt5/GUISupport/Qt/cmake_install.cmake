# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkGUISupportQt-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkGUISupportQt-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkGUISupportQt-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkGUISupportQt-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/GUISupport/Qt/CMakeFiles/vtkGUISupportQt.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QFilterTreeProxyModel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKApplication.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKInteractorAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKInteractor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkEventQtSlotConnect.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtAbstractModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtAnnotationLayersModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtConnection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtDebugLeaksModel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtDebugLeaksView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtTableModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtTreeModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKOpenGLNativeWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKOpenGLWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKOpenGLWindow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKPaintEngine.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKWin32Header.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKInteractorInternal.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/GUISupport/Qt/vtkGUISupportQtModule.h"
    )
endif()

