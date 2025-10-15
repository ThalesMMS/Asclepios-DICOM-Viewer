# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk-dicom

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/share/dicom-0.8/Copyright.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/share/dicom-0.8" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom/Copyright.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMConfig.cmake;D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/DICOMConfig.cmake"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/DICOMConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/UseDICOM.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/UseDICOM.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets.cmake"
         "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/Export/2ee180f817e2fb7bda3414350ea7d976/DICOMTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/Export/2ee180f817e2fb7bda3414350ea7d976/DICOMTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/Export/2ee180f817e2fb7bda3414350ea7d976/DICOMTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets-minsizerel.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/Export/2ee180f817e2fb7bda3414350ea7d976/DICOMTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets-relwithdebinfo.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/Export/2ee180f817e2fb7bda3414350ea7d976/DICOMTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake/DICOMTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-install-debug/lib/dicom-0.8/cmake" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/CMakeFiles/Export/2ee180f817e2fb7bda3414350ea7d976/DICOMTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/Source/cmake_install.cmake")
  include("D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/DicomCli/cmake_install.cmake")
  include("D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/Programs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "D:/Asclepios-DICOM-Viewer/deps/vtk-dicom-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
