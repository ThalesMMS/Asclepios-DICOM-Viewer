# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Utilities/KWIML/vtkkwiml/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkkwiml.test "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Utilities/KWIML/vtkkwiml/test/Debug/kwiml_test.exe")
  set_tests_properties(vtkkwiml.test PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;45;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkkwiml.test "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Utilities/KWIML/vtkkwiml/test/Release/kwiml_test.exe")
  set_tests_properties(vtkkwiml.test PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;45;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkkwiml.test "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Utilities/KWIML/vtkkwiml/test/MinSizeRel/kwiml_test.exe")
  set_tests_properties(vtkkwiml.test PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;45;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkkwiml.test "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Utilities/KWIML/vtkkwiml/test/RelWithDebInfo/kwiml_test.exe")
  set_tests_properties(vtkkwiml.test PROPERTIES  _BACKTRACE_TRIPLES "D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;45;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Utilities/KWIML/vtkkwiml/test/CMakeLists.txt;0;")
else()
  add_test(vtkkwiml.test NOT_AVAILABLE)
endif()
