# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/Core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOCore-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core" "VTKIOCORE_EXPORT")
  set_tests_properties(vtkIOCore-HeaderTest PROPERTIES  LABELS "vtkIOCore" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;29;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOCore-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core" "VTKIOCORE_EXPORT")
  set_tests_properties(vtkIOCore-HeaderTest PROPERTIES  LABELS "vtkIOCore" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;29;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOCore-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core" "VTKIOCORE_EXPORT")
  set_tests_properties(vtkIOCore-HeaderTest PROPERTIES  LABELS "vtkIOCore" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;29;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOCore-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core" "VTKIOCORE_EXPORT")
  set_tests_properties(vtkIOCore-HeaderTest PROPERTIES  LABELS "vtkIOCore" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;29;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/Core/CMakeLists.txt;0;")
else()
  add_test(vtkIOCore-HeaderTest NOT_AVAILABLE)
endif()
