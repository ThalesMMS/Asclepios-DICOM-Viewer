# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General

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
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkAnimateModes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkAnnotationLink.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkAppendLocationAttributes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkAppendPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkApproximatingSubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkAreaContourSpectrumFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkAxes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkBlankStructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkBlankStructuredGridWithImage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkBlockIdScalars.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkBooleanOperationPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkBoxClipDataSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkBrownianPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCellDerivatives.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCellValidator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCleanUnstructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCleanUnstructuredGridCells.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkClipClosedSurface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkClipConvexPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkClipDataSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkClipVolume.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCoincidentPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkContourTriangulator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCountFaces.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCountVertices.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCursor2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCursor3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkCurvatures.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDataSetGradient.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDataSetGradientPrecompute.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDataSetTriangleFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDateToNumeric.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDeflectNormals.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDeformPointSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDensifyPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDicer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDiscreteFlyingEdges2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDiscreteFlyingEdges3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDiscreteFlyingEdgesClipper2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDiscreteMarchingCubes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkDistancePolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkEdgePoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkEqualizerFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkExtractArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkExtractGhostCells.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkExtractSelectedFrustum.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkExtractSelectionBase.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkFiniteElementFieldDistributor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGradientFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGraphLayoutFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGraphToPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGraphWeightEuclideanDistanceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGraphWeightFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGroupDataSetsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkGroupTimeStepsFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkHierarchicalDataLevelFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkHyperStreamline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkIconGlyphFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkImageDataToPointSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkImageMarchingCubes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkInterpolateDataSetAttributes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkInterpolatingSubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkIntersectionPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkJoinTables.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkLevelIdScalars.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkLinkEdgels.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkLoopBooleanPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMarchingContourFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMatricizeArray.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMergeArrays.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMergeCells.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMergeTimeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMergeVectorComponents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMultiBlockDataGroupFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMultiBlockMergeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkMultiThreshold.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkNormalizeMatrixVectors.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkOBBDicer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkOBBTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkOverlappingAMRLevelIdScalars.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkPassArrays.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkPassSelectedArrays.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkPointConnectivityFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkPolyDataStreamer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkPolyDataToReebGraphFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkProbePolyhedron.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkQuadraturePointInterpolator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkQuadraturePointsGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkQuadratureSchemeDictionaryGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkQuantizePolyDataPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRandomAttributeGenerator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRectilinearGridClip.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRectilinearGridToPointSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRectilinearGridToTetrahedra.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRecursiveDividingCubes.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkReflectionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRemovePolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkRotationFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSampleImplicitFunctionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkShrinkFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkShrinkPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSpatialRepresentationFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSphericalHarmonics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSplineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSplitByCellScalarFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSplitColumnComponents.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSplitField.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkStructuredGridClip.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSubPixelPositionEdgels.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSubdivisionFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkSynchronizeTimeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTableBasedClipDataSet.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTableFFT.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTableToPolyData.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTableToStructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTemporalPathLineFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTemporalStatistics.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTessellatorFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTimeSourceExample.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTransformFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkTransformPolyDataFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkUncertaintyTubeFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkVertexGlyphFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkVolumeContourSpectrumFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkVoxelContoursToSurfaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkWarpLens.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkWarpScalar.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkWarpTo.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkWarpVector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkYoungsMaterialInterface.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build/Filters/General/vtkFiltersGeneralModule.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/vtkJoinTables.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Debug/vtkFiltersGeneral-9.3d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/Release/vtkFiltersGeneral-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/MinSizeRel/vtkFiltersGeneral-9.3.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/lib/RelWithDebInfo/vtkFiltersGeneral-9.3.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Debug/vtkFiltersGeneral-9.3d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/Release/vtkFiltersGeneral-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/MinSizeRel/vtkFiltersGeneral-9.3.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build/bin/RelWithDebInfo/vtkFiltersGeneral-9.3.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/VTK/vtkFiltersGeneral" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/General/LICENSE")
endif()

