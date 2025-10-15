# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkBlockSortHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkDirectionEncoder.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkEncodedGradientEstimator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkEncodedGradientShader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFiniteDifferenceGradientEstimator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointRayCastImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOShadeHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeShadeHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastMIPHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkGPUVolumeRayCastMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkMultiVolume.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkOSPRayVolumeInterface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkProjectedTetrahedraMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkRayCastImageDisplayHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkRecursiveSphereDirectionEncoder.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkSphericalDirectionEncoder.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridBunykRayCastFunction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridHomogeneousRayIntegrator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridLinearRayIntegrator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridPartialPreIntegration.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridPreIntegration.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridVolumeMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayCastFunction.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayCastIterator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayCastMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayIntegrator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkUnstructuredGridVolumeZSweepMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkVolumeMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkVolumeOutlineSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkVolumePicker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/vtkVolumeRayCastSpaceLeapingImageFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Rendering/Volume/vtkRenderingVolumeModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkRenderingVolume-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkRenderingVolume-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkRenderingVolume-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkRenderingVolume-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkRenderingVolume-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkRenderingVolume-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkRenderingVolume-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkRenderingVolume-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkRenderingVolume" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Volume/LICENSE")
endif()

