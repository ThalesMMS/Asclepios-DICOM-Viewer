#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DCMTK::ofstd" for configuration "Release"
set_property(TARGET DCMTK::ofstd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::ofstd PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ofstd.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::ofstd )
list(APPEND _cmake_import_check_files_for_DCMTK::ofstd "${_IMPORT_PREFIX}/lib/ofstd.lib" )

# Import target "DCMTK::ofstd_tests" for configuration "Release"
set_property(TARGET DCMTK::ofstd_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::ofstd_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ofstd_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::ofstd_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::ofstd_tests "${_IMPORT_PREFIX}/bin/ofstd_tests.exe" )

# Import target "DCMTK::oflog" for configuration "Release"
set_property(TARGET DCMTK::oflog APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::oflog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/oflog.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::oflog )
list(APPEND _cmake_import_check_files_for_DCMTK::oflog "${_IMPORT_PREFIX}/lib/oflog.lib" )

# Import target "DCMTK::mkcsmapper" for configuration "Release"
set_property(TARGET DCMTK::mkcsmapper APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::mkcsmapper PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/mkcsmapper.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::mkcsmapper )
list(APPEND _cmake_import_check_files_for_DCMTK::mkcsmapper "${_IMPORT_PREFIX}/bin/mkcsmapper.exe" )

# Import target "DCMTK::mkesdb" for configuration "Release"
set_property(TARGET DCMTK::mkesdb APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::mkesdb PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/mkesdb.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::mkesdb )
list(APPEND _cmake_import_check_files_for_DCMTK::mkesdb "${_IMPORT_PREFIX}/bin/mkesdb.exe" )

# Import target "DCMTK::oficonv" for configuration "Release"
set_property(TARGET DCMTK::oficonv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::oficonv PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/oficonv.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::oficonv )
list(APPEND _cmake_import_check_files_for_DCMTK::oficonv "${_IMPORT_PREFIX}/lib/oficonv.lib" )

# Import target "DCMTK::oficonv_tests" for configuration "Release"
set_property(TARGET DCMTK::oficonv_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::oficonv_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/oficonv_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::oficonv_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::oficonv_tests "${_IMPORT_PREFIX}/bin/oficonv_tests.exe" )

# Import target "DCMTK::dcmdata" for configuration "Release"
set_property(TARGET DCMTK::dcmdata APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdata PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmdata.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdata )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdata "${_IMPORT_PREFIX}/lib/dcmdata.lib" )

# Import target "DCMTK::i2d" for configuration "Release"
set_property(TARGET DCMTK::i2d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::i2d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/i2d.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::i2d )
list(APPEND _cmake_import_check_files_for_DCMTK::i2d "${_IMPORT_PREFIX}/lib/i2d.lib" )

# Import target "DCMTK::dcmxml" for configuration "Release"
set_property(TARGET DCMTK::dcmxml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmxml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmxml.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmxml )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmxml "${_IMPORT_PREFIX}/lib/dcmxml.lib" )

# Import target "DCMTK::dcm2xml" for configuration "Release"
set_property(TARGET DCMTK::dcm2xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcm2xml PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcm2xml.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcm2xml )
list(APPEND _cmake_import_check_files_for_DCMTK::dcm2xml "${_IMPORT_PREFIX}/bin/dcm2xml.exe" )

# Import target "DCMTK::dcmconv" for configuration "Release"
set_property(TARGET DCMTK::dcmconv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmconv PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmconv.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmconv )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmconv "${_IMPORT_PREFIX}/bin/dcmconv.exe" )

# Import target "DCMTK::dcmcrle" for configuration "Release"
set_property(TARGET DCMTK::dcmcrle APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmcrle PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmcrle.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmcrle )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmcrle "${_IMPORT_PREFIX}/bin/dcmcrle.exe" )

# Import target "DCMTK::dcmdrle" for configuration "Release"
set_property(TARGET DCMTK::dcmdrle APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdrle PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmdrle.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdrle )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdrle "${_IMPORT_PREFIX}/bin/dcmdrle.exe" )

# Import target "DCMTK::dcmdump" for configuration "Release"
set_property(TARGET DCMTK::dcmdump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdump PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmdump.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdump )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdump "${_IMPORT_PREFIX}/bin/dcmdump.exe" )

# Import target "DCMTK::dcmftest" for configuration "Release"
set_property(TARGET DCMTK::dcmftest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmftest PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmftest.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmftest )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmftest "${_IMPORT_PREFIX}/bin/dcmftest.exe" )

# Import target "DCMTK::dcmgpdir" for configuration "Release"
set_property(TARGET DCMTK::dcmgpdir APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmgpdir PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmgpdir.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmgpdir )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmgpdir "${_IMPORT_PREFIX}/bin/dcmgpdir.exe" )

# Import target "DCMTK::dump2dcm" for configuration "Release"
set_property(TARGET DCMTK::dump2dcm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dump2dcm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dump2dcm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dump2dcm )
list(APPEND _cmake_import_check_files_for_DCMTK::dump2dcm "${_IMPORT_PREFIX}/bin/dump2dcm.exe" )

# Import target "DCMTK::xml2dcm" for configuration "Release"
set_property(TARGET DCMTK::xml2dcm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::xml2dcm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/xml2dcm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::xml2dcm )
list(APPEND _cmake_import_check_files_for_DCMTK::xml2dcm "${_IMPORT_PREFIX}/bin/xml2dcm.exe" )

# Import target "DCMTK::stl2dcm" for configuration "Release"
set_property(TARGET DCMTK::stl2dcm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::stl2dcm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/stl2dcm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::stl2dcm )
list(APPEND _cmake_import_check_files_for_DCMTK::stl2dcm "${_IMPORT_PREFIX}/bin/stl2dcm.exe" )

# Import target "DCMTK::pdf2dcm" for configuration "Release"
set_property(TARGET DCMTK::pdf2dcm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::pdf2dcm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pdf2dcm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::pdf2dcm )
list(APPEND _cmake_import_check_files_for_DCMTK::pdf2dcm "${_IMPORT_PREFIX}/bin/pdf2dcm.exe" )

# Import target "DCMTK::dcm2pdf" for configuration "Release"
set_property(TARGET DCMTK::dcm2pdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcm2pdf PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcm2pdf.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcm2pdf )
list(APPEND _cmake_import_check_files_for_DCMTK::dcm2pdf "${_IMPORT_PREFIX}/bin/dcm2pdf.exe" )

# Import target "DCMTK::img2dcm" for configuration "Release"
set_property(TARGET DCMTK::img2dcm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::img2dcm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/img2dcm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::img2dcm )
list(APPEND _cmake_import_check_files_for_DCMTK::img2dcm "${_IMPORT_PREFIX}/bin/img2dcm.exe" )

# Import target "DCMTK::dcm2json" for configuration "Release"
set_property(TARGET DCMTK::dcm2json APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcm2json PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcm2json.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcm2json )
list(APPEND _cmake_import_check_files_for_DCMTK::dcm2json "${_IMPORT_PREFIX}/bin/dcm2json.exe" )

# Import target "DCMTK::cda2dcm" for configuration "Release"
set_property(TARGET DCMTK::cda2dcm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::cda2dcm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/cda2dcm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::cda2dcm )
list(APPEND _cmake_import_check_files_for_DCMTK::cda2dcm "${_IMPORT_PREFIX}/bin/cda2dcm.exe" )

# Import target "DCMTK::dcmodify" for configuration "Release"
set_property(TARGET DCMTK::dcmodify APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmodify PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmodify.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmodify )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmodify "${_IMPORT_PREFIX}/bin/dcmodify.exe" )

# Import target "DCMTK::dcmdata_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmdata_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdata_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmdata_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdata_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdata_tests "${_IMPORT_PREFIX}/bin/dcmdata_tests.exe" )

# Import target "DCMTK::dcmimgle" for configuration "Release"
set_property(TARGET DCMTK::dcmimgle APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmimgle PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmimgle.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmimgle )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmimgle "${_IMPORT_PREFIX}/lib/dcmimgle.lib" )

# Import target "DCMTK::dcmdspfn" for configuration "Release"
set_property(TARGET DCMTK::dcmdspfn APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdspfn PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmdspfn.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdspfn )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdspfn "${_IMPORT_PREFIX}/bin/dcmdspfn.exe" )

# Import target "DCMTK::dcod2lum" for configuration "Release"
set_property(TARGET DCMTK::dcod2lum APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcod2lum PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcod2lum.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcod2lum )
list(APPEND _cmake_import_check_files_for_DCMTK::dcod2lum "${_IMPORT_PREFIX}/bin/dcod2lum.exe" )

# Import target "DCMTK::dconvlum" for configuration "Release"
set_property(TARGET DCMTK::dconvlum APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dconvlum PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dconvlum.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dconvlum )
list(APPEND _cmake_import_check_files_for_DCMTK::dconvlum "${_IMPORT_PREFIX}/bin/dconvlum.exe" )

# Import target "DCMTK::dcmimage" for configuration "Release"
set_property(TARGET DCMTK::dcmimage APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmimage PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmimage.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmimage )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmimage "${_IMPORT_PREFIX}/lib/dcmimage.lib" )

# Import target "DCMTK::dcm2pnm" for configuration "Release"
set_property(TARGET DCMTK::dcm2pnm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcm2pnm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcm2pnm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcm2pnm )
list(APPEND _cmake_import_check_files_for_DCMTK::dcm2pnm "${_IMPORT_PREFIX}/bin/dcm2pnm.exe" )

# Import target "DCMTK::dcmquant" for configuration "Release"
set_property(TARGET DCMTK::dcmquant APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmquant PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmquant.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmquant )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmquant "${_IMPORT_PREFIX}/bin/dcmquant.exe" )

# Import target "DCMTK::dcmscale" for configuration "Release"
set_property(TARGET DCMTK::dcmscale APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmscale PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmscale.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmscale )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmscale "${_IMPORT_PREFIX}/bin/dcmscale.exe" )

# Import target "DCMTK::dcmicmp" for configuration "Release"
set_property(TARGET DCMTK::dcmicmp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmicmp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmicmp.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmicmp )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmicmp "${_IMPORT_PREFIX}/bin/dcmicmp.exe" )

# Import target "DCMTK::dcmjpeg" for configuration "Release"
set_property(TARGET DCMTK::dcmjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmjpeg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmjpeg.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmjpeg )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmjpeg "${_IMPORT_PREFIX}/lib/dcmjpeg.lib" )

# Import target "DCMTK::ijg8" for configuration "Release"
set_property(TARGET DCMTK::ijg8 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::ijg8 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ijg8.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::ijg8 )
list(APPEND _cmake_import_check_files_for_DCMTK::ijg8 "${_IMPORT_PREFIX}/lib/ijg8.lib" )

# Import target "DCMTK::ijg12" for configuration "Release"
set_property(TARGET DCMTK::ijg12 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::ijg12 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ijg12.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::ijg12 )
list(APPEND _cmake_import_check_files_for_DCMTK::ijg12 "${_IMPORT_PREFIX}/lib/ijg12.lib" )

# Import target "DCMTK::ijg16" for configuration "Release"
set_property(TARGET DCMTK::ijg16 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::ijg16 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ijg16.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::ijg16 )
list(APPEND _cmake_import_check_files_for_DCMTK::ijg16 "${_IMPORT_PREFIX}/lib/ijg16.lib" )

# Import target "DCMTK::dcmcjpeg" for configuration "Release"
set_property(TARGET DCMTK::dcmcjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmcjpeg PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmcjpeg.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmcjpeg )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmcjpeg "${_IMPORT_PREFIX}/bin/dcmcjpeg.exe" )

# Import target "DCMTK::dcmdjpeg" for configuration "Release"
set_property(TARGET DCMTK::dcmdjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdjpeg PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmdjpeg.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdjpeg )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdjpeg "${_IMPORT_PREFIX}/bin/dcmdjpeg.exe" )

# Import target "DCMTK::dcmj2pnm" for configuration "Release"
set_property(TARGET DCMTK::dcmj2pnm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmj2pnm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmj2pnm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmj2pnm )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmj2pnm "${_IMPORT_PREFIX}/bin/dcmj2pnm.exe" )

# Import target "DCMTK::dcmmkdir" for configuration "Release"
set_property(TARGET DCMTK::dcmmkdir APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmmkdir PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmmkdir.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmmkdir )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmmkdir "${_IMPORT_PREFIX}/bin/dcmmkdir.exe" )

# Import target "DCMTK::dcmjpls" for configuration "Release"
set_property(TARGET DCMTK::dcmjpls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmjpls PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmjpls.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmjpls )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmjpls "${_IMPORT_PREFIX}/lib/dcmjpls.lib" )

# Import target "DCMTK::dcmtkcharls" for configuration "Release"
set_property(TARGET DCMTK::dcmtkcharls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmtkcharls PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmtkcharls.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmtkcharls )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmtkcharls "${_IMPORT_PREFIX}/lib/dcmtkcharls.lib" )

# Import target "DCMTK::dcmcjpls" for configuration "Release"
set_property(TARGET DCMTK::dcmcjpls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmcjpls PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmcjpls.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmcjpls )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmcjpls "${_IMPORT_PREFIX}/bin/dcmcjpls.exe" )

# Import target "DCMTK::dcmdjpls" for configuration "Release"
set_property(TARGET DCMTK::dcmdjpls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdjpls PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmdjpls.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdjpls )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdjpls "${_IMPORT_PREFIX}/bin/dcmdjpls.exe" )

# Import target "DCMTK::dcml2pnm" for configuration "Release"
set_property(TARGET DCMTK::dcml2pnm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcml2pnm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcml2pnm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcml2pnm )
list(APPEND _cmake_import_check_files_for_DCMTK::dcml2pnm "${_IMPORT_PREFIX}/bin/dcml2pnm.exe" )

# Import target "DCMTK::dcmtls" for configuration "Release"
set_property(TARGET DCMTK::dcmtls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmtls PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmtls.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmtls )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmtls "${_IMPORT_PREFIX}/lib/dcmtls.lib" )

# Import target "DCMTK::dcmtls_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmtls_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmtls_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmtls_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmtls_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmtls_tests "${_IMPORT_PREFIX}/bin/dcmtls_tests.exe" )

# Import target "DCMTK::dcmnet" for configuration "Release"
set_property(TARGET DCMTK::dcmnet APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmnet PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmnet.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmnet )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmnet "${_IMPORT_PREFIX}/lib/dcmnet.lib" )

# Import target "DCMTK::dcmrecv" for configuration "Release"
set_property(TARGET DCMTK::dcmrecv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmrecv PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmrecv.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmrecv )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmrecv "${_IMPORT_PREFIX}/bin/dcmrecv.exe" )

# Import target "DCMTK::dcmsend" for configuration "Release"
set_property(TARGET DCMTK::dcmsend APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmsend PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmsend.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmsend )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmsend "${_IMPORT_PREFIX}/bin/dcmsend.exe" )

# Import target "DCMTK::echoscu" for configuration "Release"
set_property(TARGET DCMTK::echoscu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::echoscu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/echoscu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::echoscu )
list(APPEND _cmake_import_check_files_for_DCMTK::echoscu "${_IMPORT_PREFIX}/bin/echoscu.exe" )

# Import target "DCMTK::findscu" for configuration "Release"
set_property(TARGET DCMTK::findscu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::findscu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/findscu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::findscu )
list(APPEND _cmake_import_check_files_for_DCMTK::findscu "${_IMPORT_PREFIX}/bin/findscu.exe" )

# Import target "DCMTK::getscu" for configuration "Release"
set_property(TARGET DCMTK::getscu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::getscu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/getscu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::getscu )
list(APPEND _cmake_import_check_files_for_DCMTK::getscu "${_IMPORT_PREFIX}/bin/getscu.exe" )

# Import target "DCMTK::movescu" for configuration "Release"
set_property(TARGET DCMTK::movescu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::movescu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/movescu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::movescu )
list(APPEND _cmake_import_check_files_for_DCMTK::movescu "${_IMPORT_PREFIX}/bin/movescu.exe" )

# Import target "DCMTK::storescp" for configuration "Release"
set_property(TARGET DCMTK::storescp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::storescp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/storescp.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::storescp )
list(APPEND _cmake_import_check_files_for_DCMTK::storescp "${_IMPORT_PREFIX}/bin/storescp.exe" )

# Import target "DCMTK::storescu" for configuration "Release"
set_property(TARGET DCMTK::storescu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::storescu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/storescu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::storescu )
list(APPEND _cmake_import_check_files_for_DCMTK::storescu "${_IMPORT_PREFIX}/bin/storescu.exe" )

# Import target "DCMTK::termscu" for configuration "Release"
set_property(TARGET DCMTK::termscu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::termscu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/termscu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::termscu )
list(APPEND _cmake_import_check_files_for_DCMTK::termscu "${_IMPORT_PREFIX}/bin/termscu.exe" )

# Import target "DCMTK::dcmnet_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmnet_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmnet_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmnet_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmnet_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmnet_tests "${_IMPORT_PREFIX}/bin/dcmnet_tests.exe" )

# Import target "DCMTK::dcmsr" for configuration "Release"
set_property(TARGET DCMTK::dcmsr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmsr PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmsr.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmsr )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmsr "${_IMPORT_PREFIX}/lib/dcmsr.lib" )

# Import target "DCMTK::cmr" for configuration "Release"
set_property(TARGET DCMTK::cmr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::cmr PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/cmr.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::cmr )
list(APPEND _cmake_import_check_files_for_DCMTK::cmr "${_IMPORT_PREFIX}/lib/cmr.lib" )

# Import target "DCMTK::dsr2html" for configuration "Release"
set_property(TARGET DCMTK::dsr2html APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dsr2html PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dsr2html.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dsr2html )
list(APPEND _cmake_import_check_files_for_DCMTK::dsr2html "${_IMPORT_PREFIX}/bin/dsr2html.exe" )

# Import target "DCMTK::dsr2xml" for configuration "Release"
set_property(TARGET DCMTK::dsr2xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dsr2xml PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dsr2xml.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dsr2xml )
list(APPEND _cmake_import_check_files_for_DCMTK::dsr2xml "${_IMPORT_PREFIX}/bin/dsr2xml.exe" )

# Import target "DCMTK::dsrdump" for configuration "Release"
set_property(TARGET DCMTK::dsrdump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dsrdump PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dsrdump.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dsrdump )
list(APPEND _cmake_import_check_files_for_DCMTK::dsrdump "${_IMPORT_PREFIX}/bin/dsrdump.exe" )

# Import target "DCMTK::xml2dsr" for configuration "Release"
set_property(TARGET DCMTK::xml2dsr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::xml2dsr PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/xml2dsr.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::xml2dsr )
list(APPEND _cmake_import_check_files_for_DCMTK::xml2dsr "${_IMPORT_PREFIX}/bin/xml2dsr.exe" )

# Import target "DCMTK::mkreport" for configuration "Release"
set_property(TARGET DCMTK::mkreport APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::mkreport PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/mkreport.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::mkreport )
list(APPEND _cmake_import_check_files_for_DCMTK::mkreport "${_IMPORT_PREFIX}/bin/mkreport.exe" )

# Import target "DCMTK::dcmsr_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmsr_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmsr_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmsr_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmsr_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmsr_tests "${_IMPORT_PREFIX}/bin/dcmsr_tests.exe" )

# Import target "DCMTK::dcmdsig" for configuration "Release"
set_property(TARGET DCMTK::dcmdsig APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmdsig PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmdsig.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmdsig )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmdsig "${_IMPORT_PREFIX}/lib/dcmdsig.lib" )

# Import target "DCMTK::dcmsign" for configuration "Release"
set_property(TARGET DCMTK::dcmsign APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmsign PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmsign.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmsign )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmsign "${_IMPORT_PREFIX}/bin/dcmsign.exe" )

# Import target "DCMTK::dcmwlm" for configuration "Release"
set_property(TARGET DCMTK::dcmwlm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmwlm PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmwlm.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmwlm )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmwlm "${_IMPORT_PREFIX}/lib/dcmwlm.lib" )

# Import target "DCMTK::wlmscpfs" for configuration "Release"
set_property(TARGET DCMTK::wlmscpfs APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::wlmscpfs PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wlmscpfs.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::wlmscpfs )
list(APPEND _cmake_import_check_files_for_DCMTK::wlmscpfs "${_IMPORT_PREFIX}/bin/wlmscpfs.exe" )

# Import target "DCMTK::wltest" for configuration "Release"
set_property(TARGET DCMTK::wltest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::wltest PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wltest.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::wltest )
list(APPEND _cmake_import_check_files_for_DCMTK::wltest "${_IMPORT_PREFIX}/bin/wltest.exe" )

# Import target "DCMTK::dcmqrdb" for configuration "Release"
set_property(TARGET DCMTK::dcmqrdb APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmqrdb PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmqrdb.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmqrdb )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmqrdb "${_IMPORT_PREFIX}/lib/dcmqrdb.lib" )

# Import target "DCMTK::dcmqrscp" for configuration "Release"
set_property(TARGET DCMTK::dcmqrscp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmqrscp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmqrscp.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmqrscp )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmqrscp "${_IMPORT_PREFIX}/bin/dcmqrscp.exe" )

# Import target "DCMTK::dcmqridx" for configuration "Release"
set_property(TARGET DCMTK::dcmqridx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmqridx PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmqridx.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmqridx )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmqridx "${_IMPORT_PREFIX}/bin/dcmqridx.exe" )

# Import target "DCMTK::dcmqrti" for configuration "Release"
set_property(TARGET DCMTK::dcmqrti APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmqrti PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmqrti.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmqrti )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmqrti "${_IMPORT_PREFIX}/bin/dcmqrti.exe" )

# Import target "DCMTK::dcmpstat" for configuration "Release"
set_property(TARGET DCMTK::dcmpstat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpstat PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmpstat.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpstat )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpstat "${_IMPORT_PREFIX}/lib/dcmpstat.lib" )

# Import target "DCMTK::dcmmkcrv" for configuration "Release"
set_property(TARGET DCMTK::dcmmkcrv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmmkcrv PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmmkcrv.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmmkcrv )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmmkcrv "${_IMPORT_PREFIX}/bin/dcmmkcrv.exe" )

# Import target "DCMTK::dcmmklut" for configuration "Release"
set_property(TARGET DCMTK::dcmmklut APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmmklut PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmmklut.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmmklut )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmmklut "${_IMPORT_PREFIX}/bin/dcmmklut.exe" )

# Import target "DCMTK::dcmp2pgm" for configuration "Release"
set_property(TARGET DCMTK::dcmp2pgm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmp2pgm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmp2pgm.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmp2pgm )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmp2pgm "${_IMPORT_PREFIX}/bin/dcmp2pgm.exe" )

# Import target "DCMTK::dcmprscp" for configuration "Release"
set_property(TARGET DCMTK::dcmprscp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmprscp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmprscp.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmprscp )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmprscp "${_IMPORT_PREFIX}/bin/dcmprscp.exe" )

# Import target "DCMTK::dcmprscu" for configuration "Release"
set_property(TARGET DCMTK::dcmprscu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmprscu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmprscu.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmprscu )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmprscu "${_IMPORT_PREFIX}/bin/dcmprscu.exe" )

# Import target "DCMTK::dcmpschk" for configuration "Release"
set_property(TARGET DCMTK::dcmpschk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpschk PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmpschk.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpschk )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpschk "${_IMPORT_PREFIX}/bin/dcmpschk.exe" )

# Import target "DCMTK::dcmpsmk" for configuration "Release"
set_property(TARGET DCMTK::dcmpsmk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpsmk PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmpsmk.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpsmk )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpsmk "${_IMPORT_PREFIX}/bin/dcmpsmk.exe" )

# Import target "DCMTK::dcmpsprt" for configuration "Release"
set_property(TARGET DCMTK::dcmpsprt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpsprt PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmpsprt.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpsprt )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpsprt "${_IMPORT_PREFIX}/bin/dcmpsprt.exe" )

# Import target "DCMTK::dcmpsrcv" for configuration "Release"
set_property(TARGET DCMTK::dcmpsrcv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpsrcv PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmpsrcv.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpsrcv )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpsrcv "${_IMPORT_PREFIX}/bin/dcmpsrcv.exe" )

# Import target "DCMTK::dcmpssnd" for configuration "Release"
set_property(TARGET DCMTK::dcmpssnd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpssnd PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmpssnd.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpssnd )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpssnd "${_IMPORT_PREFIX}/bin/dcmpssnd.exe" )

# Import target "DCMTK::msgserv" for configuration "Release"
set_property(TARGET DCMTK::msgserv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::msgserv PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/msgserv.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::msgserv )
list(APPEND _cmake_import_check_files_for_DCMTK::msgserv "${_IMPORT_PREFIX}/bin/msgserv.exe" )

# Import target "DCMTK::dcmrt" for configuration "Release"
set_property(TARGET DCMTK::dcmrt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmrt PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmrt.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmrt )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmrt "${_IMPORT_PREFIX}/lib/dcmrt.lib" )

# Import target "DCMTK::drtdump" for configuration "Release"
set_property(TARGET DCMTK::drtdump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::drtdump PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/drtdump.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::drtdump )
list(APPEND _cmake_import_check_files_for_DCMTK::drtdump "${_IMPORT_PREFIX}/bin/drtdump.exe" )

# Import target "DCMTK::drttest" for configuration "Release"
set_property(TARGET DCMTK::drttest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::drttest PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/drttest.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::drttest )
list(APPEND _cmake_import_check_files_for_DCMTK::drttest "${_IMPORT_PREFIX}/bin/drttest.exe" )

# Import target "DCMTK::dcmrt_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmrt_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmrt_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmrt_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmrt_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmrt_tests "${_IMPORT_PREFIX}/bin/dcmrt_tests.exe" )

# Import target "DCMTK::dcmiod" for configuration "Release"
set_property(TARGET DCMTK::dcmiod APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmiod PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmiod.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmiod )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmiod "${_IMPORT_PREFIX}/lib/dcmiod.lib" )

# Import target "DCMTK::dcmiod_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmiod_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmiod_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmiod_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmiod_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmiod_tests "${_IMPORT_PREFIX}/bin/dcmiod_tests.exe" )

# Import target "DCMTK::dcmfg" for configuration "Release"
set_property(TARGET DCMTK::dcmfg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmfg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmfg.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmfg )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmfg "${_IMPORT_PREFIX}/lib/dcmfg.lib" )

# Import target "DCMTK::dcmfg_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmfg_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmfg_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmfg_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmfg_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmfg_tests "${_IMPORT_PREFIX}/bin/dcmfg_tests.exe" )

# Import target "DCMTK::dcmseg" for configuration "Release"
set_property(TARGET DCMTK::dcmseg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmseg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmseg.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmseg )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmseg "${_IMPORT_PREFIX}/lib/dcmseg.lib" )

# Import target "DCMTK::dcmseg_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmseg_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmseg_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmseg_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmseg_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmseg_tests "${_IMPORT_PREFIX}/bin/dcmseg_tests.exe" )

# Import target "DCMTK::dcmtract" for configuration "Release"
set_property(TARGET DCMTK::dcmtract APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmtract PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmtract.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmtract )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmtract "${_IMPORT_PREFIX}/lib/dcmtract.lib" )

# Import target "DCMTK::dcmpmap" for configuration "Release"
set_property(TARGET DCMTK::dcmpmap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmpmap PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmpmap.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmpmap )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmpmap "${_IMPORT_PREFIX}/lib/dcmpmap.lib" )

# Import target "DCMTK::dcmect" for configuration "Release"
set_property(TARGET DCMTK::dcmect APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmect PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dcmect.lib"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmect )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmect "${_IMPORT_PREFIX}/lib/dcmect.lib" )

# Import target "DCMTK::dcmect_tests" for configuration "Release"
set_property(TARGET DCMTK::dcmect_tests APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(DCMTK::dcmect_tests PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dcmect_tests.exe"
  )

list(APPEND _cmake_import_check_targets DCMTK::dcmect_tests )
list(APPEND _cmake_import_check_files_for_DCMTK::dcmect_tests "${_IMPORT_PREFIX}/bin/dcmect_tests.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
