# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/TecplotTable/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOTecplotTableCxx-TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOTecplotTableCxx-TestTecplotTableReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOTecplotTable" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOTecplotTableCxx-TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOTecplotTableCxx-TestTecplotTableReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOTecplotTable" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOTecplotTableCxx-TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOTecplotTableCxx-TestTecplotTableReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOTecplotTable" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOTecplotTableCxx-TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOTecplotTableCxx-TestTecplotTableReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOTecplotTable" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOTecplotTableCxx-TestTecplotTableReader NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/TecplotTable/Testing/Data/residuals.dat")
  set_tests_properties(TestTecplotTableReader PROPERTIES  _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;7;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/TecplotTable/Testing/Data/residuals.dat")
  set_tests_properties(TestTecplotTableReader PROPERTIES  _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;7;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/TecplotTable/Testing/Data/residuals.dat")
  set_tests_properties(TestTecplotTableReader PROPERTIES  _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;7;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(TestTecplotTableReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOTecplotTableCxxTests.exe" "TestTecplotTableReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/TecplotTable/Testing/Data/residuals.dat")
  set_tests_properties(TestTecplotTableReader PROPERTIES  _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;7;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/TecplotTable/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(TestTecplotTableReader NOT_AVAILABLE)
endif()
