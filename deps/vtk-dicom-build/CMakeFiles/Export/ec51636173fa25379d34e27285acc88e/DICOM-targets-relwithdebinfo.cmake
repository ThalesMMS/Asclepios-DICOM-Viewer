#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "VTK::DICOM" for configuration "RelWithDebInfo"
set_property(TARGET VTK::DICOM APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(VTK::DICOM PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/vtkDICOM-9.3.lib"
  )

list(APPEND _cmake_import_check_targets VTK::DICOM )
list(APPEND _cmake_import_check_files_for_VTK::DICOM "${_IMPORT_PREFIX}/lib/vtkDICOM-9.3.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
