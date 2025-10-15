# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Statistics
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersStatistics-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics" "VTKFILTERSSTATISTICS_EXPORT")
  set_tests_properties(vtkFiltersStatistics-HeaderTest PROPERTIES  LABELS "vtkFiltersStatistics" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;21;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersStatistics-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics" "VTKFILTERSSTATISTICS_EXPORT")
  set_tests_properties(vtkFiltersStatistics-HeaderTest PROPERTIES  LABELS "vtkFiltersStatistics" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;21;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersStatistics-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics" "VTKFILTERSSTATISTICS_EXPORT")
  set_tests_properties(vtkFiltersStatistics-HeaderTest PROPERTIES  LABELS "vtkFiltersStatistics" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;21;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersStatistics-HeaderTest "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Core/HeaderTesting.py" "D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics" "VTKFILTERSSTATISTICS_EXPORT")
  set_tests_properties(vtkFiltersStatistics-HeaderTest PROPERTIES  LABELS "vtkFiltersStatistics" _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkModuleMacros.cmake;777;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;21;vtk_module_library;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Statistics/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersStatistics-HeaderTest NOT_AVAILABLE)
endif()
