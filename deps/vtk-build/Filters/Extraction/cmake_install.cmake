# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkBlockSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkConvertSelection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExpandMarkedElements.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractBlock.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractBlockUsingDataAssembly.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractCellsByType.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractDataArraysOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractDataOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractDataSets.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractExodusGlobalTemporalVariables.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractGeometry.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractLevel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractParticlesOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractPolyDataGeometry.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractRectilinearGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedArraysOverTime.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedBlock.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedIds.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedLocations.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedPolyDataIds.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedRows.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelectedThresholds.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractSelection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractTensorComponents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractTimeSteps.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractUnstructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkExtractVectorComponents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkFrustumSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkHierarchicalDataExtractDataSets.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkHierarchicalDataExtractLevel.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkLocationSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkProbeSelectedLocations.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/vtkValueSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Extraction/vtkFiltersExtractionModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersExtraction-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersExtraction-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersExtraction-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersExtraction-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersExtraction-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersExtraction-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersExtraction-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersExtraction-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersExtraction" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Extraction/LICENSE")
endif()

