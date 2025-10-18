set(vtkRenderingQt_LOADED 1)
set(vtkRenderingQt_DEPENDS "vtkCommonCore;vtkCommonDataModel;vtkCommonExecutionModel;vtkCommonSystem;vtkFiltersSources;vtkFiltersTexture;vtkGUISupportQt;vtkRenderingCore;vtkRenderingLabel")
set(vtkRenderingQt_LIBRARIES "vtkRenderingQt")
set(vtkRenderingQt_INCLUDE_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/Qt;D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/Qt")
set(vtkRenderingQt_LIBRARY_DIRS "")
set(vtkRenderingQt_RUNTIME_LIBRARY_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin")
set(vtkRenderingQt_WRAP_HIERARCHY_FILE "")
set(vtkRenderingQt_KIT "")
set(vtkRenderingQt_TARGETS_FILE "")

if(NOT Qt5_DIR)
  set(Qt5_DIR "C:/Qt5/5.15.2/msvc2019_64/lib/cmake/Qt5")
endif()

find_package(Qt5 REQUIRED QUIET COMPONENTS Widgets)


