#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "VTK::DICOM" for configuration "Release"
set_property(TARGET VTK::DICOM APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(VTK::DICOM PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtkDICOM-9.3.lib"
  )

list(APPEND _cmake_import_check_targets VTK::DICOM )
list(APPEND _cmake_import_check_files_for_VTK::DICOM "${_IMPORT_PREFIX}/lib/vtkDICOM-9.3.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
