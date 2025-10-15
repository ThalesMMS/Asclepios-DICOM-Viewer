# CMake generated Testfile for 
# Source directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx
# Build directory: D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Filters/Points/Testing/Cxx
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersPointsCxx-UnitTestKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersPointsCxxTests.exe" "UnitTestKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-UnitTestKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersPointsCxx-UnitTestKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersPointsCxxTests.exe" "UnitTestKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-UnitTestKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersPointsCxx-UnitTestKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersPointsCxxTests.exe" "UnitTestKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-UnitTestKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersPointsCxx-UnitTestKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersPointsCxxTests.exe" "UnitTestKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-UnitTestKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersPointsCxx-UnitTestKernels NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersPointsCxx-TestSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersPointsCxxTests.exe" "TestSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersPointsCxx-TestSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersPointsCxxTests.exe" "TestSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersPointsCxx-TestSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersPointsCxxTests.exe" "TestSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersPointsCxx-TestSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersPointsCxxTests.exe" "TestSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersPointsCxx-TestSPHKernels NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersPointsCxx-PlotSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersPointsCxxTests.exe" "PlotSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Filters/Points/Testing/Data/Baseline/PlotSPHKernels.png")
  set_tests_properties(vtkFiltersPointsCxx-PlotSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersPointsCxx-PlotSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersPointsCxxTests.exe" "PlotSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Filters/Points/Testing/Data/Baseline/PlotSPHKernels.png")
  set_tests_properties(vtkFiltersPointsCxx-PlotSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersPointsCxx-PlotSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersPointsCxxTests.exe" "PlotSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Filters/Points/Testing/Data/Baseline/PlotSPHKernels.png")
  set_tests_properties(vtkFiltersPointsCxx-PlotSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersPointsCxx-PlotSPHKernels "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersPointsCxxTests.exe" "PlotSPHKernels" "-D" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData//Testing" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary" "-V" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/ExternalData/Filters/Points/Testing/Data/Baseline/PlotSPHKernels.png")
  set_tests_properties(vtkFiltersPointsCxx-PlotSPHKernels PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersPointsCxx-PlotSPHKernels NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vtkFiltersPointsCxx-TestPointCloudFilterArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Debug/vtkFiltersPointsCxxTests.exe" "TestPointCloudFilterArrays" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestPointCloudFilterArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vtkFiltersPointsCxx-TestPointCloudFilterArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/Release/vtkFiltersPointsCxxTests.exe" "TestPointCloudFilterArrays" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestPointCloudFilterArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(vtkFiltersPointsCxx-TestPointCloudFilterArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/MinSizeRel/vtkFiltersPointsCxxTests.exe" "TestPointCloudFilterArrays" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestPointCloudFilterArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(vtkFiltersPointsCxx-TestPointCloudFilterArrays "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/bin/RelWithDebInfo/vtkFiltersPointsCxxTests.exe" "TestPointCloudFilterArrays" "-T" "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary")
  set_tests_properties(vtkFiltersPointsCxx-TestPointCloudFilterArrays PROPERTIES  FAIL_REGULAR_EXPRESSION "(
|^)ERROR: ;instance(s)? still around" LABELS "vtkFiltersPoints" SKIP_RETURN_CODE "125" _BACKTRACE_TRIPLES "C:/Qt/Tools/CMake_64/share/cmake-3.30/Modules/ExternalData.cmake;356;add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/CMake/vtkTestingMacros.cmake;298;ExternalData_add_test;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;1;vtk_add_test_cxx;D:/Asclepios-DICOM-Viewer/deps/vtk/Filters/Points/Testing/Cxx/CMakeLists.txt;0;")
else()
  add_test(vtkFiltersPointsCxx-TestPointCloudFilterArrays NOT_AVAILABLE)
endif()
