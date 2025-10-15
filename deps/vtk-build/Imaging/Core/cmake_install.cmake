# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkAbstractImageInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkExtractVOI.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkGenericImageInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageAppendComponents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageBlend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageBSplineCoefficients.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageBSplineInternals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageBSplineInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageCacheFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageCast.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageChangeInformation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageClip.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageConstantPad.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageDataStreamer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageDecomposeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageDifference.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageExtractComponents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageFlip.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageIterateFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageMagnify.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageMapToColors.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageMask.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageMirrorPad.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImagePadFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImagePermute.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImagePointDataIterator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImagePointIterator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageProbeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageResample.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageResize.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageReslice.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageResliceToColors.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageShiftScale.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageShrink3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageSincInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageStencilAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageStencilData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageStencilIterator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageStencilSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageThreshold.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageTranslateExtent.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkImageWrapPad.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/vtkRTAnalyticSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Imaging/Core/vtkImagingCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkImagingCore-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkImagingCore-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkImagingCore-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkImagingCore-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkImagingCore-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkImagingCore-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkImagingCore-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkImagingCore-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkImagingCore" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Imaging/Core/LICENSE")
endif()

