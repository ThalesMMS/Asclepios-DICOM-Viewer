# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/GUISupport/QtSQL/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkGUISupportQtSQLCxx-TestQtSQLDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkGUISupportQtSQLCxxTests.exe" "TestQtSQLDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkGUISupportQtSQLCxx-TestQtSQLDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkGUISupportQtSQL" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;3;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkGUISupportQtSQLCxx-TestQtSQLDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkGUISupportQtSQLCxxTests.exe" "TestQtSQLDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkGUISupportQtSQLCxx-TestQtSQLDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkGUISupportQtSQL" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;3;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkGUISupportQtSQLCxx-TestQtSQLDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkGUISupportQtSQLCxxTests.exe" "TestQtSQLDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkGUISupportQtSQLCxx-TestQtSQLDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkGUISupportQtSQL" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;3;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkGUISupportQtSQLCxx-TestQtSQLDatabase "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkGUISupportQtSQLCxxTests.exe" "TestQtSQLDatabase" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkGUISupportQtSQLCxx-TestQtSQLDatabase PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkGUISupportQtSQL" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;3;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/GUISupport/QtSQL/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkGUISupportQtSQLCxx-TestQtSQLDatabase NOT_AVAILABLE)
endif()
