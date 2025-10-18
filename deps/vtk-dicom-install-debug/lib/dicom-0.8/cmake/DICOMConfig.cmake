#-----------------------------------------------------------------------------
#
# DICOMConfig.cmake - cmake configuration file for external projects.
#
#-----------------------------------------------------------------------------


# The C and C++ flags added to the cmake-configured flags.
set(DICOM_REQUIRED_C_FLAGS "")
set(DICOM_REQUIRED_CXX_FLAGS "")

# The version number
set(DICOM_MAJOR_VERSION "0")
set(DICOM_MINOR_VERSION "8")
set(DICOM_PATCH_VERSION "17")

# Legacy (for backwards compatibility)
set(DICOM_BUILD_VERSION "${DICOM_PATCH_VERSION}")

# Configured settings
set(DICOM_BUILD_SHARED_LIBS "OFF")
set(DICOM_USE_ITK_GDCM "OFF")
set(DICOM_USE_GDCM "OFF")
set(DICOM_USE_DCMTK "OFF")
set(DICOM_USE_SQLITE "OFF")

# Auto-configured settings
set(DICOM_USE_VTKZLIB "ON")

# Dependencies
set(DICOM_VTK_DIR "D:/Asclepios-DICOM-Viewer/deps/vtk-install-qt5-debug/lib/cmake/vtk-8.2")
if(NOT VTK_FOUND)
  find_package(VTK PATHS "${DICOM_VTK_DIR}")
else()
  get_filename_component(tmp1 "${DICOM_VTK_DIR}" REALPATH)
  get_filename_component(tmp2 "${VTK_DIR}" REALPATH)
  if(NOT "${tmp1}" STREQUAL "${tmp2}")
    message(WARNING
      "Mismatch for VTK between vtk-dicom and current project: "
      "DICOM_DIR=${DICOM_DIR} "
      "VTK_DICOM_DIR=${DICOM_VTK_DIR} "
      "VTK_DIR=${VTK_DIR}")
  endif()
endif()
if(DICOM_USE_ITK_GDCM)
  set(DICOM_ITK_DIR "")
  if(NOT DICOM_BUILD_SHARED_LIBS AND NOT ITK_FOUND)
    find_package(ITK PATHS "${DICOM_ITK_DIR}")
  endif()
elseif(DICOM_USE_GDCM)
  set(DICOM_GDCM_DIR "")
  if(NOT DICOM_BUILD_SHARED_LIBS AND NOT GDCM_FOUND)
    find_package(GDCM PATHS "${DICOM_GDCM_DIR}")
  endif()
elseif(DICOM_USE_DCMTK)
  set(DICOM_DCMTK_DIR "")
  if(NOT DICOM_BUILD_SHARED_LIBS AND NOT DCMTK_FOUND)
    find_package(DCMTK PATHS "${DICOM_DCMTK_DIR}")
  endif()
endif()

# Get the current directory
get_filename_component(DICOM_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

# The location of the "use" file.
set(DICOM_USE_FILE "${DICOM_CMAKE_DIR}/UseDICOM.cmake")

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET vtkDICOM AND NOT DICOM_BINARY_DIR)
  include("${DICOM_CMAKE_DIR}/DICOMTargets.cmake")
endif()

# Compute paths
set(DICOM_INCLUDE_DIRS "${DICOM_PGK_DIR}/../../../include")
set(DICOM_LIBRARY_DIRS "${DICOM_PGK_DIR}/../../")

# These are IMPORTED targets created by DICOMTargets.cmake
set(DICOM_LIBRARIES vtkDICOM)
