# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/SQL/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOSQLCxx-TestSQLDatabaseSchema "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOSQLCxxTests.exe" "TestSQLDatabaseSchema" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLDatabaseSchema PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOSQLCxx-TestSQLDatabaseSchema "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOSQLCxxTests.exe" "TestSQLDatabaseSchema" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLDatabaseSchema PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOSQLCxx-TestSQLDatabaseSchema "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOSQLCxxTests.exe" "TestSQLDatabaseSchema" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLDatabaseSchema PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOSQLCxx-TestSQLDatabaseSchema "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOSQLCxxTests.exe" "TestSQLDatabaseSchema" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLDatabaseSchema PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOSQLCxx-TestSQLDatabaseSchema NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOSQLCxx-TestSQLiteDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOSQLCxxTests.exe" "TestSQLiteDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOSQLCxx-TestSQLiteDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOSQLCxxTests.exe" "TestSQLiteDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOSQLCxx-TestSQLiteDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOSQLCxxTests.exe" "TestSQLiteDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOSQLCxx-TestSQLiteDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOSQLCxxTests.exe" "TestSQLiteDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOSQLCxx-TestSQLiteDatabase NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOSQLCxx-TestSQLiteTableReadWrite "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOSQLCxxTests.exe" "TestSQLiteTableReadWrite" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/SQL/Testing/Data/Input/simple_table.vtk")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteTableReadWrite PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOSQLCxx-TestSQLiteTableReadWrite "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOSQLCxxTests.exe" "TestSQLiteTableReadWrite" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/SQL/Testing/Data/Input/simple_table.vtk")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteTableReadWrite PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOSQLCxx-TestSQLiteTableReadWrite "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOSQLCxxTests.exe" "TestSQLiteTableReadWrite" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/SQL/Testing/Data/Input/simple_table.vtk")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteTableReadWrite PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOSQLCxx-TestSQLiteTableReadWrite "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOSQLCxxTests.exe" "TestSQLiteTableReadWrite" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/SQL/Testing/Data/Input/simple_table.vtk")
  set_tests_properties(vtkIOSQLCxx-TestSQLiteTableReadWrite PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOSQL" RUN_SERIAL "1" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;2;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/SQL/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOSQLCxx-TestSQLiteTableReadWrite NOT_AVAILABLE)
endif()
