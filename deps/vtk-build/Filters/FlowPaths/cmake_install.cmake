# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkAbstractInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkAMRInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkCachingInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkCellLocatorInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkCompositeInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkEvenlySpacedStreamlines2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkLagrangianBasicIntegrationModel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkLagrangianMatidaIntegrationModel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkLagrangianParticle.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkLagrangianParticleTracker.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkLinearTransformCellLocator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkModifiedBSPTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkParallelVectors.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkParticlePathFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkParticleTracer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkParticleTracerBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkStreaklineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkStreamSurface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkStreamTracer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkTemporalInterpolatedVelocityField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkVectorFieldTopology.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkVortexCore.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/FlowPaths/vtkFiltersFlowPathsModule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/FlowPaths/vtkLagrangianThreadedData.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersFlowPaths-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersFlowPaths-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersFlowPaths-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersFlowPaths-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersFlowPaths-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersFlowPaths-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersFlowPaths-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersFlowPaths-9.3.dll")
  endif()
endif()

