# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Selection/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersSelectionCxx-TestLinearSelector2D NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector2D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector2D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector2D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector2D NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersSelectionCxxTests.exe" "TestCellDistanceSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestCellDistanceSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersSelectionCxx-TestCellDistanceSelector3D NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersSelectionCxx-TestLinearSelector3D "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersSelectionCxxTests.exe" "TestLinearSelector3D" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersSelectionCxx-TestLinearSelector3D PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersSelection" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Selection/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersSelectionCxx-TestLinearSelector3D NOT_AVAILABLE)
endif()
