# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkCommonExecutionModel-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkCommonExecutionModel-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkCommonExecutionModel-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkCommonExecutionModel-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Common/ExecutionModel/CMakeFiles/vtkCommonExecutionModel.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkAlgorithmOutput.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkAnnotationLayersAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkArrayDataAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkCachedStreamingDemandDrivenPipeline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkCastToConcrete.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkCompositeDataPipeline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkCompositeDataSetAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkDataObjectAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkDataSetAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkDemandDrivenPipeline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkDirectedGraphAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkEnsembleSource.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkExecutive.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkExtentSplitter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkExtentTranslator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkFilteringInformationKeyManager.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkGraphAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkHierarchicalBoxDataSetAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkHyperTreeGridAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkImageAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkImageInPlaceFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkImageProgressIterator.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkImageToStructuredGrid.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkImageToStructuredPoints.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkInformationDataObjectMetaDataKey.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkInformationExecutivePortKey.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkInformationExecutivePortVectorKey.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkInformationIntegerRequestKey.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkMoleculeAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkMultiBlockDataSetAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkMultiTimeStepAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkParallelReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkPassInputTypeAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkPiecewiseFunctionAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkPiecewiseFunctionShiftScale.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkPointSetAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkPolyDataAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkReaderAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkReaderExecutive.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkRectilinearGridAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkScalarTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSimpleImageToImageFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSimpleReader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSimpleScalarTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSpanSpace.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSphereTree.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkStreamingDemandDrivenPipeline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkStructuredGridAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkTableAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSMPProgressObserver.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkThreadedCompositeDataPipeline.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkThreadedImageAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkTreeAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkTrivialConsumer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkTrivialProducer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkUndirectedGraphAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkUnstructuredGridAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkUnstructuredGridBaseAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkProgressObserver.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkSelectionAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkExtentRCBPartitioner.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkUniformGridPartitioner.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkUniformGridAMRAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkOverlappingAMRAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Common/ExecutionModel/vtkNonOverlappingAMRAlgorithm.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Common/ExecutionModel/vtkCommonExecutionModelModule.h"
    )
endif()

