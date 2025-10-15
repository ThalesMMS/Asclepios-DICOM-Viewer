# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/IO/XML/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestAMRXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestAMRXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestAMRXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestAMRXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestAMRXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestAMRXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestAMRXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestAMRXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestAMRXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestAMRXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestAMRXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestAMRXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestAMRXMLIO NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestDataObjectXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestDataObjectXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestDataObjectXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestDataObjectXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestDataObjectXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestDataObjectXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestDataObjectXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestDataObjectXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestDataObjectXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestDataObjectXMLIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestDataObjectXMLIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestDataObjectXMLIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestDataObjectXMLIO NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestMultiBlockXMLIOWithPartialArrays" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestMultiBlockXMLIOWithPartialArrays" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestMultiBlockXMLIOWithPartialArrays" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestMultiBlockXMLIOWithPartialArrays" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestMultiBlockXMLIOWithPartialArrays NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestReadDuplicateDataArrayNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestReadDuplicateDataArrayNames" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestReadDuplicateDataArrayNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestReadDuplicateDataArrayNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestReadDuplicateDataArrayNames" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestReadDuplicateDataArrayNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestReadDuplicateDataArrayNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestReadDuplicateDataArrayNames" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestReadDuplicateDataArrayNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestReadDuplicateDataArrayNames "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestReadDuplicateDataArrayNames" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestReadDuplicateDataArrayNames PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestReadDuplicateDataArrayNames NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXML "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXML" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/sample.xml")
  set_tests_properties(vtkIOXMLCxx-TestXML PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXML "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXML" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/sample.xml")
  set_tests_properties(vtkIOXMLCxx-TestXML PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXML "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXML" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/sample.xml")
  set_tests_properties(vtkIOXMLCxx-TestXML PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXML "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXML" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/sample.xml")
  set_tests_properties(vtkIOXMLCxx-TestXML PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXML NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLGhostCellsImport "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLGhostCellsImport" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLGhostCellsImport.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLGhostCellsImport PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLGhostCellsImport "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLGhostCellsImport" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLGhostCellsImport.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLGhostCellsImport PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLGhostCellsImport "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLGhostCellsImport" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLGhostCellsImport.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLGhostCellsImport PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLGhostCellsImport "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLGhostCellsImport" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLGhostCellsImport.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLGhostCellsImport PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLGhostCellsImport NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLHierarchicalBoxDataFileConverter" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLHierarchicalBoxDataFileConverter" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLHierarchicalBoxDataFileConverter" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLHierarchicalBoxDataFileConverter" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLHierarchicalBoxDataFileConverter NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLHyperTreeGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLHyperTreeGridIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHyperTreeGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLHyperTreeGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLHyperTreeGridIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHyperTreeGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLHyperTreeGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLHyperTreeGridIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHyperTreeGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLHyperTreeGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLHyperTreeGridIO" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLHyperTreeGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLHyperTreeGridIO NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLMappedUnstructuredGridIO" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLMappedUnstructuredGridIO" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLMappedUnstructuredGridIO" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLMappedUnstructuredGridIO" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLMappedUnstructuredGridIO NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLToString "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLToString")
  set_tests_properties(vtkIOXMLCxx-TestXMLToString PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLToString "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLToString")
  set_tests_properties(vtkIOXMLCxx-TestXMLToString PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLToString "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLToString")
  set_tests_properties(vtkIOXMLCxx-TestXMLToString PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLToString "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLToString")
  set_tests_properties(vtkIOXMLCxx-TestXMLToString PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLToString NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLUnstructuredGridReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLUnstructuredGridReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLUnstructuredGridReader.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLUnstructuredGridReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLUnstructuredGridReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLUnstructuredGridReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLUnstructuredGridReader.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLUnstructuredGridReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLUnstructuredGridReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLUnstructuredGridReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLUnstructuredGridReader.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLUnstructuredGridReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLUnstructuredGridReader "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLUnstructuredGridReader" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/IO/XML/Testing/Data/Baseline/TestXMLUnstructuredGridReader.png")
  set_tests_properties(vtkIOXMLCxx-TestXMLUnstructuredGridReader PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLUnstructuredGridReader NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLWriterWithDataArrayFallback" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLWriterWithDataArrayFallback" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLWriterWithDataArrayFallback" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLWriterWithDataArrayFallback" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLWriterWithDataArrayFallback NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLWriteRead "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLWriteRead" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriteRead PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLWriteRead "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLWriteRead" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriteRead PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLWriteRead "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLWriteRead" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriteRead PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLWriteRead "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLWriteRead" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkIOXMLCxx-TestXMLWriteRead PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;23;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLWriteRead NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLCompositeDataReaderDistribution" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/distTest.vtm" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;27;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLCompositeDataReaderDistribution" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/distTest.vtm" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;27;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLCompositeDataReaderDistribution" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/distTest.vtm" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;27;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLCompositeDataReaderDistribution" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/distTest.vtm" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;27;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLCompositeDataReaderDistribution NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadImageData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badImageData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadImageData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;31;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadImageData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badImageData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadImageData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;31;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadImageData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badImageData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadImageData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;31;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadImageData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badImageData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadImageData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;31;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLReaderBadImageData NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadPolyData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badPolyData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadPolyData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;34;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadPolyData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badPolyData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadPolyData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;34;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadPolyData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badPolyData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadPolyData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;34;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadPolyData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badPolyData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadPolyData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;34;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLReaderBadPolyData NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badRectilinearGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;37;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badRectilinearGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;37;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badRectilinearGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;37;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badRectilinearGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;37;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLReaderBadRectilinearGridData NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUnstructuredGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;40;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUnstructuredGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;40;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUnstructuredGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;40;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUnstructuredGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;40;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLReaderBadUnstucturedGridData NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUniformGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUniformGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUniformGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;43;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUniformGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUniformGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUniformGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;43;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUniformGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUniformGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUniformGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;43;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkIOXMLCxx-TestXMLReaderBadUniformGridData "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkIOXMLCxxTests.exe" "TestXMLReaderBadData" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Testing/Data/badUniformGridData.xml" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing")
  set_tests_properties(vtkIOXMLCxx-TestXMLReaderBadUniformGridData PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkIOXML" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;43;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkIOXMLCxx-TestXMLReaderBadUniformGridData NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(TestXMLCInterface "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/TestXMLCInterface.exe")
  set_tests_properties(TestXMLCInterface PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;51;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(TestXMLCInterface "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/TestXMLCInterface.exe")
  set_tests_properties(TestXMLCInterface PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;51;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(TestXMLCInterface "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/TestXMLCInterface.exe")
  set_tests_properties(TestXMLCInterface PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;51;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(TestXMLCInterface "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/TestXMLCInterface.exe")
  set_tests_properties(TestXMLCInterface PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;51;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/IO/XML/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(TestXMLCInterface NOT_AVAILABLE)
endif()
