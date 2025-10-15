# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtk3DLinearGridCrinkleExtractor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtk3DLinearGridPlaneCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAppendArcLength.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAppendCompositeDataLeaves.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAppendDataSets.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAppendFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAppendPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAppendSelection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkArrayCalculator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkArrayRename.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAssignAttribute.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAttributeDataToFieldDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkAttributeDataToTableFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkBinCellDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkBinnedDecimation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCellCenters.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCellDataToPointData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCenterOfMass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCleanPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkClipPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCompositeCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCompositeDataProbeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkConnectivityFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkConstrainedSmoothingFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkContour3DLinearGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkContourFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkContourGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkContourHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkConvertToMultiBlockDataSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkConvertToPartitionedDataSetCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkConvertToPolyhedra.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDataObjectGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDataObjectToDataSetFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDataSetEdgeSubdivisionCriterion.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDataSetToDataObjectFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDecimatePolylineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDecimatePro.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDelaunay2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkDelaunay3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkEdgeSubdivisionCriterion.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkElevationFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkExecutionTimer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkExplicitStructuredGridCrop.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkExplicitStructuredGridToUnstructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkExtractCells.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkExtractCellsAlongPolyLine.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkExtractEdges.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkFeatureEdges.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkFieldDataToAttributeDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkFieldDataToDataSetAttribute.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkFlyingEdges2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkFlyingEdges3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkFlyingEdgesPlaneCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkGlyph2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkGlyph3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkGridSynchronizedTemplates3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkHedgeHog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkHull.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkHyperTreeGridProbeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkIdFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkImageAppend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkImageDataToExplicitStructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkImplicitPolyDataDistance.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkImplicitProjectOnPlaneDistance.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMarchingCubes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMarchingSquares.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMaskFields.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMaskPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMaskPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMassProperties.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMergeDataObjectFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMergeFields.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMergeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMoleculeAppend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkMultiObjectMassProperties.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPackLabels.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPassThrough.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPlaneCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPointDataToCellData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataConnectivityFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataEdgeConnectivityFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataNormals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataPlaneClipper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataPlaneCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataTangents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkPolyDataToUnstructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkProbeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkQuadricClustering.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkQuadricDecimation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkRearrangeFields.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkRectilinearSynchronizedTemplates.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkRemoveDuplicatePolys.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkRemoveUnusedPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkResampleToImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkResampleWithDataSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkReverseSense.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSimpleElevationFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSmoothPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSphereTreeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStructuredDataPlaneCutter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStaticCleanPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStaticCleanUnstructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStreamerBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStreamingTessellator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStripper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStructuredGridAppend.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkStructuredGridOutlineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSurfaceNets2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSurfaceNets3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSynchronizedTemplates2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSynchronizedTemplates3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkSynchronizedTemplatesCutter3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkTensorGlyph.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkThreshold.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkThresholdPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkTransposeTable.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkTriangleFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkTriangleMeshPointNormals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkTubeBender.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkTubeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkUnstructuredGridQuadricDecimation.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkUnstructuredGridToExplicitStructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkVectorDot.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkVectorNorm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkVoronoi2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/vtkWindowedSincPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/Core/vtkFiltersCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersCore-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersCore-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersCore-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersCore-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersCore-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersCore-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersCore-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersCore-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersCore" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Core/LICENSE")
endif()

