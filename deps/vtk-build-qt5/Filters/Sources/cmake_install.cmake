# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkFiltersSources-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkFiltersSources-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkFiltersSources-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkFiltersSources-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Sources/CMakeFiles/vtkFiltersSources.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkArcSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkArrowSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkButtonSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCellTypeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkConeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCubeSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkCylinderSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkDiskSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkEllipseArcSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkEllipticalButtonSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkFrustumSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkGlyphSource2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkHyperTreeGridSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkLineSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkOutlineCornerFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkOutlineCornerSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkOutlineSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkParametricFunctionSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPlaneSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPlatonicSolidSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPointSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkPolyLineSource.h"
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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkGraphToPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Sources/vtkDiagonalMatrixSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Sources/vtkFiltersSourcesModule.h"
    )
endif()

