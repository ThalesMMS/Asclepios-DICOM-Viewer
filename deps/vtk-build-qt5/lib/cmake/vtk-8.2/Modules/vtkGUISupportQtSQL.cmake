set(vtkGUISupportQtSQL_LOADED 1)
set(vtkGUISupportQtSQL_DEPENDS "vtkCommonCore;vtkIOSQL;vtksys")
set(vtkGUISupportQtSQL_LIBRARIES "vtkGUISupportQtSQL")
set(vtkGUISupportQtSQL_INCLUDE_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/GUISupport/QtSQL;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL")
set(vtkGUISupportQtSQL_LIBRARY_DIRS "")
set(vtkGUISupportQtSQL_RUNTIME_LIBRARY_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin")
set(vtkGUISupportQtSQL_WRAP_HIERARCHY_FILE "")
set(vtkGUISupportQtSQL_KIT "")
set(vtkGUISupportQtSQL_TARGETS_FILE "")
set(vtkGUISupportQtSQL_EXCLUDE_FROM_WRAPPING 1)

if(NOT Qt5_DIR)
  set(Qt5_DIR "C:/Qt5/5.15.2/msvc2019_64/lib/cmake/Qt5")
endif()

find_package(Qt5 REQUIRED QUIET COMPONENTS Sql Widgets)


