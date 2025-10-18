set(vtkGUISupportQt_LOADED 1)
set(vtkGUISupportQt_DEPENDS "vtkCommonCore;vtkCommonDataModel;vtkFiltersExtraction;vtkInteractionStyle;vtkRenderingCore;vtkRenderingOpenGL2")
set(vtkGUISupportQt_LIBRARIES "vtkGUISupportQt")
set(vtkGUISupportQt_INCLUDE_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/GUISupport/Qt;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/Qt")
set(vtkGUISupportQt_LIBRARY_DIRS "")
set(vtkGUISupportQt_RUNTIME_LIBRARY_DIRS "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin")
set(vtkGUISupportQt_WRAP_HIERARCHY_FILE "")
set(vtkGUISupportQt_KIT "")
set(vtkGUISupportQt_TARGETS_FILE "")
set(VTK_QT_RCC_EXECUTABLE "")
set(VTK_QT_MOC_EXECUTABLE "C:/Qt5/5.15.2/msvc2019_64/bin/moc.exe")
set(VTK_QT_UIC_EXECUTABLE "")
set(VTK_QT_QMAKE_EXECUTABLE "")
set(vtkGUISupportQt_EXCLUDE_FROM_WRAPPING 1)

if(NOT Qt5_DIR)
  set(Qt5_DIR "C:/Qt5/5.15.2/msvc2019_64/lib/cmake/Qt5")
endif()

find_package(Qt5 REQUIRED QUIET COMPONENTS Widgets)


