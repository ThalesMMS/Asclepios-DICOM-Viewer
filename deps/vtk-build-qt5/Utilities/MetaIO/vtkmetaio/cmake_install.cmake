# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkmetaio-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkmetaio-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkmetaio-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkmetaio-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkmetaio" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaArrow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaBlob.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaCommand.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaContour.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaEvent.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaForm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaGroup.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaITKUtils.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaLine.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaMesh.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaOutput.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaScene.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaSurface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaTransform.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaTube.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaTypes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaUtils.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
    )
endif()

