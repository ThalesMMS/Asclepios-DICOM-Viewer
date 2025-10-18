# This module is provided as DICOM_USE_FILE by DICOMConfig.cmake.  It can
# be INCLUDEd in a project to load the needed compiler and linker settings.

if(NOT DICOM_USE_FILE_INCLUDED)
  set(DICOM_USE_FILE_INCLUDED 1)

  # Dependencies
  if(VTK_FOUND)
    include(${VTK_USE_FILE})
  else()
    message(FATAL_ERROR
      "VTK not found in DICOM_VTK_DIR=\"${DICOM_VTK_DIR}\".")
  endif()

  if(NOT DICOM_BUILD_SHARED_LIBS)
    if(DICOM_USE_ITK_GDCM)
      if(ITK_FOUND)
        include(${ITK_USE_FILE})
      else()
        message(FATAL_ERROR
          "ITK not found in DICOM_ITK_DIR=\"${DICOM_ITK_DIR}\"")
      endif()
    elseif(DICOM_USE_GDCM)
      if(GDCM_FOUND)
        include(${GDCM_USE_FILE})
      else()
        message(FATAL_ERROR
          "GDCM not found in DICOM_GDCM_DIR=\"${DICOM_GDCM_DIR}\"")
      endif()
    endif()
  endif()

  # Update CMAKE_MODULE_PATH so includes work.
  set(CMAKE_MODULE_PATH
    ${CMAKE_MODULE_PATH}
    ${DICOM_CMAKE_DIR})

  # Add compiler flags needed to use DICOM.
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${DICOM_REQUIRED_C_FLAGS}")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${DICOM_REQUIRED_CXX_FLAGS}")

  # Add include directories needed to use DICOM.
  include_directories(${DICOM_INCLUDE_DIRS})

endif(NOT DICOM_USE_FILE_INCLUDED)
