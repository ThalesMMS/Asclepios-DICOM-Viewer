# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKRenderWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKWin32Header.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QFilterTreeProxyModel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKApplication.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKInteractor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKInteractorAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKOpenGLNativeWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKOpenGLStereoWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKOpenGLWindow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKRenderWindowAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/QVTKTableModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkEventQtSlotConnect.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQWidgetRepresentation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQWidgetTexture.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQWidgetWidget.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtAbstractModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtAnnotationLayersModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtConnection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtDebugLeaksModel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtDebugLeaksView.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtTableModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/vtkQtTreeModelAdapter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/GUISupport/Qt/vtkGUISupportQtModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkGUISupportQt-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkGUISupportQt-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkGUISupportQt-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkGUISupportQt-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkGUISupportQt-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkGUISupportQt-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkGUISupportQt-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkGUISupportQt-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkGUISupportQt" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt/LICENSE")
endif()

