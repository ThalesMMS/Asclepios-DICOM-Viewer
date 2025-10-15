# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Parallel/Core/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkParallelCoreCxx-TestFieldDataSerialization "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkParallelCoreCxxTests.exe" "TestFieldDataSerialization")
  set_tests_properties(vtkParallelCoreCxx-TestFieldDataSerialization PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkParallelCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkParallelCoreCxx-TestFieldDataSerialization "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkParallelCoreCxxTests.exe" "TestFieldDataSerialization")
  set_tests_properties(vtkParallelCoreCxx-TestFieldDataSerialization PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkParallelCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkParallelCoreCxx-TestFieldDataSerialization "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkParallelCoreCxxTests.exe" "TestFieldDataSerialization")
  set_tests_properties(vtkParallelCoreCxx-TestFieldDataSerialization PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkParallelCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkParallelCoreCxx-TestFieldDataSerialization "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkParallelCoreCxxTests.exe" "TestFieldDataSerialization")
  set_tests_properties(vtkParallelCoreCxx-TestFieldDataSerialization PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkParallelCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkParallelCoreCxx-TestFieldDataSerialization NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkParallelCore-TestSocketCommunicator "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestDriver.py" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "--server" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkParallelCore-TestSocketCommunicator PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;11;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkParallelCore-TestSocketCommunicator "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestDriver.py" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "--server" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkParallelCore-TestSocketCommunicator PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;11;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkParallelCore-TestSocketCommunicator "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestDriver.py" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "--server" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkParallelCore-TestSocketCommunicator PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;11;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkParallelCore-TestSocketCommunicator "C:/Users/user/AppData/Local/Programs/Python/Python313/python.exe" "D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestDriver.py" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "--server" "--process" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkParallelCore-TestSocketCommunicator.exe" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkParallelCore-TestSocketCommunicator PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;11;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Parallel/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkParallelCore-TestSocketCommunicator NOT_AVAILABLE)
endif()
