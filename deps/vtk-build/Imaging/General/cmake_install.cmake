# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageCheckerboard.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageCityBlockDistance.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageConvolve.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageCorrelation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageEuclideanDistance.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageEuclideanToPolar.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageGaussianSmooth.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageGradient.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageGradientMagnitude.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageHybridMedian2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageLaplacian.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageMedian3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageNormalize.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageRange3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageSeparableConvolution.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageSlab.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageSlabReslice.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageSobel2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageSobel3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageSpatialAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/General/vtkImageVariance3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Imaging/General/vtkImagingGeneralModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkImagingGeneral-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkImagingGeneral-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkImagingGeneral-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkImagingGeneral-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkImagingGeneral-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkImagingGeneral-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkImagingGeneral-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkImagingGeneral-9.3.dll")
  endif()
endif()

