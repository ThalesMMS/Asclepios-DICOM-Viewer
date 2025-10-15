# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkArcSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkArrowSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkButtonSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCapsuleSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCellTypeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkConeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCubeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCylinderSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkDiagonalMatrixSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkDiskSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkEllipseArcSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkEllipticalButtonSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkFrustumSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkGlyphSource2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkGraphToPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkHandleSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkHyperTreeGridPreConfiguredSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkHyperTreeGridSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkLineSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkOutlineCornerFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkOutlineCornerSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkOutlineSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkParametricFunctionSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPartitionedDataSetSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPartitionedDataSetCollectionSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPlaneSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPlatonicSolidSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPointHandleSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPointSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPolyLineSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPolyPointSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkProgrammableDataObjectSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkProgrammableSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkRandomHyperTreeGridSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkRectangularButtonSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkRegularPolygonSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkSelectionSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkSphereSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkSuperquadricSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkTessellatedBoxSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkTextSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkTexturedSphereSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkUniformHyperTreeGridSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Sources/vtkFiltersSourcesModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersSources-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersSources-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersSources-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersSources-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersSources-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersSources-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersSources-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersSources-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersSources" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/LICENSE")
endif()

