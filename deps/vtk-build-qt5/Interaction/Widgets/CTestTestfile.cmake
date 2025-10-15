# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Interaction/Widgets
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkInteractionWidgets-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets" "VTKINTERACTIONWIDGETS_EXPORT")
  set_tests_properties(vtkInteractionWidgets-HeaderTest PROPERTIES  LABELS "vtkInteractionWidgets" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;143;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkInteractionWidgets-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets" "VTKINTERACTIONWIDGETS_EXPORT")
  set_tests_properties(vtkInteractionWidgets-HeaderTest PROPERTIES  LABELS "vtkInteractionWidgets" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;143;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkInteractionWidgets-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets" "VTKINTERACTIONWIDGETS_EXPORT")
  set_tests_properties(vtkInteractionWidgets-HeaderTest PROPERTIES  LABELS "vtkInteractionWidgets" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;143;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkInteractionWidgets-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets" "VTKINTERACTIONWIDGETS_EXPORT")
  set_tests_properties(vtkInteractionWidgets-HeaderTest PROPERTIES  LABELS "vtkInteractionWidgets" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;143;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Interaction/Widgets/CMakeLists.txt;0;")
else()
  add_test(vtkInteractionWidgets-HeaderTest NOT_AVAILABLE)
endif()
