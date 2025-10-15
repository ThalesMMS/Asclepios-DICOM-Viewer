# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Common/Core/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-UnitTestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "UnitTestMath")
  set_tests_properties(vtkCommonCoreCxx-UnitTestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-UnitTestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "UnitTestMath")
  set_tests_properties(vtkCommonCoreCxx-UnitTestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-UnitTestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "UnitTestMath")
  set_tests_properties(vtkCommonCoreCxx-UnitTestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-UnitTestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "UnitTestMath")
  set_tests_properties(vtkCommonCoreCxx-UnitTestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-UnitTestMath NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayAPI NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIConvenience "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayAPIConvenience")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIConvenience PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIConvenience "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayAPIConvenience")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIConvenience PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIConvenience "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayAPIConvenience")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIConvenience PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIConvenience "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayAPIConvenience")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIConvenience PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayAPIConvenience NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayAPIDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayAPIDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayAPIDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayAPIDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayAPIDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPIDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayAPIDense NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayAPISparse "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayAPISparse")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPISparse PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayAPISparse "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayAPISparse")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPISparse PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayAPISparse "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayAPISparse")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPISparse PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayAPISparse "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayAPISparse")
  set_tests_properties(vtkCommonCoreCxx-TestArrayAPISparse PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayAPISparse NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayBool "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayBool")
  set_tests_properties(vtkCommonCoreCxx-TestArrayBool PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayBool "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayBool")
  set_tests_properties(vtkCommonCoreCxx-TestArrayBool PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayBool "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayBool")
  set_tests_properties(vtkCommonCoreCxx-TestArrayBool PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayBool "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayBool")
  set_tests_properties(vtkCommonCoreCxx-TestArrayBool PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayBool NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayDispatchers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayDispatchers")
  set_tests_properties(vtkCommonCoreCxx-TestArrayDispatchers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayDispatchers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayDispatchers")
  set_tests_properties(vtkCommonCoreCxx-TestArrayDispatchers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayDispatchers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayDispatchers")
  set_tests_properties(vtkCommonCoreCxx-TestArrayDispatchers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayDispatchers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayDispatchers")
  set_tests_properties(vtkCommonCoreCxx-TestArrayDispatchers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayDispatchers NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestAtomic "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestAtomic")
  set_tests_properties(vtkCommonCoreCxx-TestAtomic PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestAtomic "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestAtomic")
  set_tests_properties(vtkCommonCoreCxx-TestAtomic PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestAtomic "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestAtomic")
  set_tests_properties(vtkCommonCoreCxx-TestAtomic PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestAtomic "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestAtomic")
  set_tests_properties(vtkCommonCoreCxx-TestAtomic PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestAtomic NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestScalarsToColors "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestScalarsToColors")
  set_tests_properties(vtkCommonCoreCxx-TestScalarsToColors PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestScalarsToColors "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestScalarsToColors")
  set_tests_properties(vtkCommonCoreCxx-TestScalarsToColors PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestScalarsToColors "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestScalarsToColors")
  set_tests_properties(vtkCommonCoreCxx-TestScalarsToColors PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestScalarsToColors "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestScalarsToColors")
  set_tests_properties(vtkCommonCoreCxx-TestScalarsToColors PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestScalarsToColors NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayExtents "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayExtents")
  set_tests_properties(vtkCommonCoreCxx-TestArrayExtents PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayExtents "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayExtents")
  set_tests_properties(vtkCommonCoreCxx-TestArrayExtents PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayExtents "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayExtents")
  set_tests_properties(vtkCommonCoreCxx-TestArrayExtents PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayExtents "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayExtents")
  set_tests_properties(vtkCommonCoreCxx-TestArrayExtents PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayExtents NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayFreeFunctions "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayFreeFunctions")
  set_tests_properties(vtkCommonCoreCxx-TestArrayFreeFunctions PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayFreeFunctions "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayFreeFunctions")
  set_tests_properties(vtkCommonCoreCxx-TestArrayFreeFunctions PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayFreeFunctions "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayFreeFunctions")
  set_tests_properties(vtkCommonCoreCxx-TestArrayFreeFunctions PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayFreeFunctions "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayFreeFunctions")
  set_tests_properties(vtkCommonCoreCxx-TestArrayFreeFunctions PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayFreeFunctions NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayInterpolationDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayInterpolationDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayInterpolationDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayInterpolationDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayInterpolationDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayInterpolationDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayInterpolationDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayInterpolationDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayInterpolationDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayInterpolationDense "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayInterpolationDense")
  set_tests_properties(vtkCommonCoreCxx-TestArrayInterpolationDense PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayInterpolationDense NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayLookup")
  set_tests_properties(vtkCommonCoreCxx-TestArrayLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayLookup")
  set_tests_properties(vtkCommonCoreCxx-TestArrayLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayLookup")
  set_tests_properties(vtkCommonCoreCxx-TestArrayLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayLookup")
  set_tests_properties(vtkCommonCoreCxx-TestArrayLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayLookup NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayNullValues "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayNullValues")
  set_tests_properties(vtkCommonCoreCxx-TestArrayNullValues PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayNullValues "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayNullValues")
  set_tests_properties(vtkCommonCoreCxx-TestArrayNullValues PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayNullValues "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayNullValues")
  set_tests_properties(vtkCommonCoreCxx-TestArrayNullValues PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayNullValues "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayNullValues")
  set_tests_properties(vtkCommonCoreCxx-TestArrayNullValues PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayNullValues NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArraySize "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArraySize")
  set_tests_properties(vtkCommonCoreCxx-TestArraySize PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArraySize "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArraySize")
  set_tests_properties(vtkCommonCoreCxx-TestArraySize PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArraySize "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArraySize")
  set_tests_properties(vtkCommonCoreCxx-TestArraySize PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArraySize "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArraySize")
  set_tests_properties(vtkCommonCoreCxx-TestArraySize PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArraySize NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayUniqueValueDetection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayUniqueValueDetection")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUniqueValueDetection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayUniqueValueDetection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayUniqueValueDetection")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUniqueValueDetection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayUniqueValueDetection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayUniqueValueDetection")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUniqueValueDetection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayUniqueValueDetection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayUniqueValueDetection")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUniqueValueDetection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayUniqueValueDetection NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayUserTypes "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayUserTypes")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUserTypes PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayUserTypes "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayUserTypes")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUserTypes PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayUserTypes "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayUserTypes")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUserTypes PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayUserTypes "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayUserTypes")
  set_tests_properties(vtkCommonCoreCxx-TestArrayUserTypes PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayUserTypes NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestArrayVariants "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestArrayVariants")
  set_tests_properties(vtkCommonCoreCxx-TestArrayVariants PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestArrayVariants "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestArrayVariants")
  set_tests_properties(vtkCommonCoreCxx-TestArrayVariants PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestArrayVariants "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestArrayVariants")
  set_tests_properties(vtkCommonCoreCxx-TestArrayVariants PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestArrayVariants "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestArrayVariants")
  set_tests_properties(vtkCommonCoreCxx-TestArrayVariants PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestArrayVariants NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestCollection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestCollection")
  set_tests_properties(vtkCommonCoreCxx-TestCollection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestCollection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestCollection")
  set_tests_properties(vtkCommonCoreCxx-TestCollection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestCollection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestCollection")
  set_tests_properties(vtkCommonCoreCxx-TestCollection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestCollection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestCollection")
  set_tests_properties(vtkCommonCoreCxx-TestCollection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestCollection NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestConditionVariable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestConditionVariable")
  set_tests_properties(vtkCommonCoreCxx-TestConditionVariable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestConditionVariable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestConditionVariable")
  set_tests_properties(vtkCommonCoreCxx-TestConditionVariable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestConditionVariable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestConditionVariable")
  set_tests_properties(vtkCommonCoreCxx-TestConditionVariable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestConditionVariable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestConditionVariable")
  set_tests_properties(vtkCommonCoreCxx-TestConditionVariable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestConditionVariable NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestDataArray NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestDataArrayComponentNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestDataArrayComponentNames")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayComponentNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestDataArrayComponentNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestDataArrayComponentNames")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayComponentNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestDataArrayComponentNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestDataArrayComponentNames")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayComponentNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestDataArrayComponentNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestDataArrayComponentNames")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayComponentNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestDataArrayComponentNames NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestDataArrayIterators "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestDataArrayIterators")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayIterators PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestDataArrayIterators "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestDataArrayIterators")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayIterators PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestDataArrayIterators "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestDataArrayIterators")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayIterators PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestDataArrayIterators "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestDataArrayIterators")
  set_tests_properties(vtkCommonCoreCxx-TestDataArrayIterators PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestDataArrayIterators NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestDataArraySelection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestDataArraySelection")
  set_tests_properties(vtkCommonCoreCxx-TestDataArraySelection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestDataArraySelection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestDataArraySelection")
  set_tests_properties(vtkCommonCoreCxx-TestDataArraySelection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestDataArraySelection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestDataArraySelection")
  set_tests_properties(vtkCommonCoreCxx-TestDataArraySelection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestDataArraySelection "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestDataArraySelection")
  set_tests_properties(vtkCommonCoreCxx-TestDataArraySelection PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestDataArraySelection NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestGarbageCollector "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestGarbageCollector")
  set_tests_properties(vtkCommonCoreCxx-TestGarbageCollector PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestGarbageCollector "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestGarbageCollector")
  set_tests_properties(vtkCommonCoreCxx-TestGarbageCollector PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestGarbageCollector "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestGarbageCollector")
  set_tests_properties(vtkCommonCoreCxx-TestGarbageCollector PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestGarbageCollector "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestGarbageCollector")
  set_tests_properties(vtkCommonCoreCxx-TestGarbageCollector PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestGarbageCollector NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestGenericDataArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestGenericDataArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestGenericDataArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestGenericDataArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestGenericDataArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestGenericDataArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestGenericDataArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestGenericDataArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestGenericDataArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestGenericDataArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestGenericDataArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestGenericDataArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestGenericDataArrayAPI NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestInformationKeyLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestInformationKeyLookup")
  set_tests_properties(vtkCommonCoreCxx-TestInformationKeyLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestInformationKeyLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestInformationKeyLookup")
  set_tests_properties(vtkCommonCoreCxx-TestInformationKeyLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestInformationKeyLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestInformationKeyLookup")
  set_tests_properties(vtkCommonCoreCxx-TestInformationKeyLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestInformationKeyLookup "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestInformationKeyLookup")
  set_tests_properties(vtkCommonCoreCxx-TestInformationKeyLookup PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestInformationKeyLookup NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestLookupTable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestLookupTable")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestLookupTable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestLookupTable")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestLookupTable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestLookupTable")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestLookupTable "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestLookupTable")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTable PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestLookupTable NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestLookupTableThreaded "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestLookupTableThreaded")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTableThreaded PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestLookupTableThreaded "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestLookupTableThreaded")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTableThreaded PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestLookupTableThreaded "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestLookupTableThreaded")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTableThreaded PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestLookupTableThreaded "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestLookupTableThreaded")
  set_tests_properties(vtkCommonCoreCxx-TestLookupTableThreaded PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestLookupTableThreaded NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestMath")
  set_tests_properties(vtkCommonCoreCxx-TestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestMath")
  set_tests_properties(vtkCommonCoreCxx-TestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestMath")
  set_tests_properties(vtkCommonCoreCxx-TestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestMath "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestMath")
  set_tests_properties(vtkCommonCoreCxx-TestMath PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestMath NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestMersenneTwister "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestMersenneTwister")
  set_tests_properties(vtkCommonCoreCxx-TestMersenneTwister PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestMersenneTwister "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestMersenneTwister")
  set_tests_properties(vtkCommonCoreCxx-TestMersenneTwister PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestMersenneTwister "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestMersenneTwister")
  set_tests_properties(vtkCommonCoreCxx-TestMersenneTwister PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestMersenneTwister "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestMersenneTwister")
  set_tests_properties(vtkCommonCoreCxx-TestMersenneTwister PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestMersenneTwister NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestMinimalStandardRandomSequence "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestMinimalStandardRandomSequence")
  set_tests_properties(vtkCommonCoreCxx-TestMinimalStandardRandomSequence PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestMinimalStandardRandomSequence "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestMinimalStandardRandomSequence")
  set_tests_properties(vtkCommonCoreCxx-TestMinimalStandardRandomSequence PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestMinimalStandardRandomSequence "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestMinimalStandardRandomSequence")
  set_tests_properties(vtkCommonCoreCxx-TestMinimalStandardRandomSequence PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestMinimalStandardRandomSequence "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestMinimalStandardRandomSequence")
  set_tests_properties(vtkCommonCoreCxx-TestMinimalStandardRandomSequence PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestMinimalStandardRandomSequence NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestNew "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestNew")
  set_tests_properties(vtkCommonCoreCxx-TestNew PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestNew "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestNew")
  set_tests_properties(vtkCommonCoreCxx-TestNew PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestNew "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestNew")
  set_tests_properties(vtkCommonCoreCxx-TestNew PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestNew "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestNew")
  set_tests_properties(vtkCommonCoreCxx-TestNew PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestNew NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestObjectFactory "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestObjectFactory")
  set_tests_properties(vtkCommonCoreCxx-TestObjectFactory PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestObjectFactory "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestObjectFactory")
  set_tests_properties(vtkCommonCoreCxx-TestObjectFactory PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestObjectFactory "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestObjectFactory")
  set_tests_properties(vtkCommonCoreCxx-TestObjectFactory PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestObjectFactory "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestObjectFactory")
  set_tests_properties(vtkCommonCoreCxx-TestObjectFactory PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestObjectFactory NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestObservers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestObservers")
  set_tests_properties(vtkCommonCoreCxx-TestObservers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestObservers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestObservers")
  set_tests_properties(vtkCommonCoreCxx-TestObservers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestObservers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestObservers")
  set_tests_properties(vtkCommonCoreCxx-TestObservers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestObservers "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestObservers")
  set_tests_properties(vtkCommonCoreCxx-TestObservers PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestObservers NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestObserversPerformance "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestObserversPerformance")
  set_tests_properties(vtkCommonCoreCxx-TestObserversPerformance PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestObserversPerformance "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestObserversPerformance")
  set_tests_properties(vtkCommonCoreCxx-TestObserversPerformance PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestObserversPerformance "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestObserversPerformance")
  set_tests_properties(vtkCommonCoreCxx-TestObserversPerformance PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestObserversPerformance "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestObserversPerformance")
  set_tests_properties(vtkCommonCoreCxx-TestObserversPerformance PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestObserversPerformance NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestOStreamWrapper "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestOStreamWrapper")
  set_tests_properties(vtkCommonCoreCxx-TestOStreamWrapper PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestOStreamWrapper "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestOStreamWrapper")
  set_tests_properties(vtkCommonCoreCxx-TestOStreamWrapper PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestOStreamWrapper "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestOStreamWrapper")
  set_tests_properties(vtkCommonCoreCxx-TestOStreamWrapper PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestOStreamWrapper "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestOStreamWrapper")
  set_tests_properties(vtkCommonCoreCxx-TestOStreamWrapper PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestOStreamWrapper NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestSMP "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestSMP")
  set_tests_properties(vtkCommonCoreCxx-TestSMP PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestSMP "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestSMP")
  set_tests_properties(vtkCommonCoreCxx-TestSMP PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestSMP "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestSMP")
  set_tests_properties(vtkCommonCoreCxx-TestSMP PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestSMP "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestSMP")
  set_tests_properties(vtkCommonCoreCxx-TestSMP PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestSMP NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestSmartPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestSmartPointer")
  set_tests_properties(vtkCommonCoreCxx-TestSmartPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestSmartPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestSmartPointer")
  set_tests_properties(vtkCommonCoreCxx-TestSmartPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestSmartPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestSmartPointer")
  set_tests_properties(vtkCommonCoreCxx-TestSmartPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestSmartPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestSmartPointer")
  set_tests_properties(vtkCommonCoreCxx-TestSmartPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestSmartPointer NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestSortDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestSortDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestSortDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestSortDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestSortDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestSortDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestSortDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestSortDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestSortDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestSortDataArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestSortDataArray")
  set_tests_properties(vtkCommonCoreCxx-TestSortDataArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestSortDataArray NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestSparseArrayValidation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestSparseArrayValidation")
  set_tests_properties(vtkCommonCoreCxx-TestSparseArrayValidation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestSparseArrayValidation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestSparseArrayValidation")
  set_tests_properties(vtkCommonCoreCxx-TestSparseArrayValidation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestSparseArrayValidation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestSparseArrayValidation")
  set_tests_properties(vtkCommonCoreCxx-TestSparseArrayValidation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestSparseArrayValidation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestSparseArrayValidation")
  set_tests_properties(vtkCommonCoreCxx-TestSparseArrayValidation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestSparseArrayValidation NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestSystemInformation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestSystemInformation" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5")
  set_tests_properties(vtkCommonCoreCxx-TestSystemInformation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestSystemInformation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestSystemInformation" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5")
  set_tests_properties(vtkCommonCoreCxx-TestSystemInformation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestSystemInformation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestSystemInformation" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5")
  set_tests_properties(vtkCommonCoreCxx-TestSystemInformation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestSystemInformation "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestSystemInformation" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5")
  set_tests_properties(vtkCommonCoreCxx-TestSystemInformation PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestSystemInformation NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestTemplateMacro "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestTemplateMacro")
  set_tests_properties(vtkCommonCoreCxx-TestTemplateMacro PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestTemplateMacro "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestTemplateMacro")
  set_tests_properties(vtkCommonCoreCxx-TestTemplateMacro PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestTemplateMacro "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestTemplateMacro")
  set_tests_properties(vtkCommonCoreCxx-TestTemplateMacro PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestTemplateMacro "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestTemplateMacro")
  set_tests_properties(vtkCommonCoreCxx-TestTemplateMacro PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestTemplateMacro NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestTimePointUtility "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestTimePointUtility")
  set_tests_properties(vtkCommonCoreCxx-TestTimePointUtility PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestTimePointUtility "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestTimePointUtility")
  set_tests_properties(vtkCommonCoreCxx-TestTimePointUtility PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestTimePointUtility "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestTimePointUtility")
  set_tests_properties(vtkCommonCoreCxx-TestTimePointUtility PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestTimePointUtility "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestTimePointUtility")
  set_tests_properties(vtkCommonCoreCxx-TestTimePointUtility PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestTimePointUtility NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestUnicodeStringAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestUnicodeStringAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestUnicodeStringAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestUnicodeStringAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestUnicodeStringAPI NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestUnicodeStringArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestUnicodeStringArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestUnicodeStringArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestUnicodeStringArrayAPI "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestUnicodeStringArrayAPI")
  set_tests_properties(vtkCommonCoreCxx-TestUnicodeStringArrayAPI PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestUnicodeStringArrayAPI NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestVariant "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestVariant")
  set_tests_properties(vtkCommonCoreCxx-TestVariant PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestVariant "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestVariant")
  set_tests_properties(vtkCommonCoreCxx-TestVariant PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestVariant "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestVariant")
  set_tests_properties(vtkCommonCoreCxx-TestVariant PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestVariant "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestVariant")
  set_tests_properties(vtkCommonCoreCxx-TestVariant PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestVariant NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestVariantComparison "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestVariantComparison")
  set_tests_properties(vtkCommonCoreCxx-TestVariantComparison PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestVariantComparison "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestVariantComparison")
  set_tests_properties(vtkCommonCoreCxx-TestVariantComparison PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestVariantComparison "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestVariantComparison")
  set_tests_properties(vtkCommonCoreCxx-TestVariantComparison PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestVariantComparison "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestVariantComparison")
  set_tests_properties(vtkCommonCoreCxx-TestVariantComparison PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestVariantComparison NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestWeakPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestWeakPointer")
  set_tests_properties(vtkCommonCoreCxx-TestWeakPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestWeakPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestWeakPointer")
  set_tests_properties(vtkCommonCoreCxx-TestWeakPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestWeakPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestWeakPointer")
  set_tests_properties(vtkCommonCoreCxx-TestWeakPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestWeakPointer "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestWeakPointer")
  set_tests_properties(vtkCommonCoreCxx-TestWeakPointer PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestWeakPointer NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-TestXMLFileOutputWindow "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "TestXMLFileOutputWindow" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary/XMLFileOutputWindow.txt")
  set_tests_properties(vtkCommonCoreCxx-TestXMLFileOutputWindow PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-TestXMLFileOutputWindow "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "TestXMLFileOutputWindow" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary/XMLFileOutputWindow.txt")
  set_tests_properties(vtkCommonCoreCxx-TestXMLFileOutputWindow PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-TestXMLFileOutputWindow "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "TestXMLFileOutputWindow" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary/XMLFileOutputWindow.txt")
  set_tests_properties(vtkCommonCoreCxx-TestXMLFileOutputWindow PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-TestXMLFileOutputWindow "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "TestXMLFileOutputWindow" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary/XMLFileOutputWindow.txt")
  set_tests_properties(vtkCommonCoreCxx-TestXMLFileOutputWindow PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-TestXMLFileOutputWindow NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-UnitTestInformationKeys "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "UnitTestInformationKeys")
  set_tests_properties(vtkCommonCoreCxx-UnitTestInformationKeys PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-UnitTestInformationKeys "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "UnitTestInformationKeys")
  set_tests_properties(vtkCommonCoreCxx-UnitTestInformationKeys PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-UnitTestInformationKeys "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "UnitTestInformationKeys")
  set_tests_properties(vtkCommonCoreCxx-UnitTestInformationKeys PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-UnitTestInformationKeys "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "UnitTestInformationKeys")
  set_tests_properties(vtkCommonCoreCxx-UnitTestInformationKeys PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-UnitTestInformationKeys NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-otherArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "otherArrays")
  set_tests_properties(vtkCommonCoreCxx-otherArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-otherArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "otherArrays")
  set_tests_properties(vtkCommonCoreCxx-otherArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-otherArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "otherArrays")
  set_tests_properties(vtkCommonCoreCxx-otherArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-otherArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "otherArrays")
  set_tests_properties(vtkCommonCoreCxx-otherArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-otherArrays NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-otherByteSwap "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "otherByteSwap")
  set_tests_properties(vtkCommonCoreCxx-otherByteSwap PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-otherByteSwap "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "otherByteSwap")
  set_tests_properties(vtkCommonCoreCxx-otherByteSwap PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-otherByteSwap "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "otherByteSwap")
  set_tests_properties(vtkCommonCoreCxx-otherByteSwap PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-otherByteSwap "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "otherByteSwap")
  set_tests_properties(vtkCommonCoreCxx-otherByteSwap PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-otherByteSwap NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkCommonCoreCxx-otherStringArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkCommonCoreCxxTests.exe" "otherStringArray")
  set_tests_properties(vtkCommonCoreCxx-otherStringArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkCommonCoreCxx-otherStringArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkCommonCoreCxxTests.exe" "otherStringArray")
  set_tests_properties(vtkCommonCoreCxx-otherStringArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkCommonCoreCxx-otherStringArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkCommonCoreCxxTests.exe" "otherStringArray")
  set_tests_properties(vtkCommonCoreCxx-otherStringArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkCommonCoreCxx-otherStringArray "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkCommonCoreCxxTests.exe" "otherStringArray")
  set_tests_properties(vtkCommonCoreCxx-otherStringArray PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkCommonCore" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;81;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Common/Core/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkCommonCoreCxx-otherStringArray NOT_AVAILABLE)
endif()
