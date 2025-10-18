set(vtkViewsQt_LOADED 1)
set(vtkViewsQt_DEPENDS "vtkCommonCore;vtkCommonDataModel;vtkCommonExecutionModel;vtkFiltersExtraction;vtkFiltersGeneral;vtkGUISupportQt;vtkInfovisCore;vtkViewsCore;vtkViewsInfovis")
set(vtkViewsQt_LIBRARIES "vtkViewsQt")
set(vtkViewsQt_INCLUDE_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Views/Qt;D:/Asclepios-DICOM-Viewer/deps/vtk/Views/Qt")
set(vtkViewsQt_LIBRARY_DIRS "")
set(vtkViewsQt_RUNTIME_LIBRARY_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin")
set(vtkViewsQt_WRAP_HIERARCHY_FILE "")
set(vtkViewsQt_KIT "")
set(vtkViewsQt_TARGETS_FILE "")
set(vtkViewsQt_EXCLUDE_FROM_WRAPPING 1)

if(NOT Qt5_DIR)
  set(Qt5_DIR "C:/Qt5/5.15.2/msvc2019_64/lib/cmake/Qt5")
endif()

find_package(Qt5 REQUIRED QUIET COMPONENTS Widgets)


