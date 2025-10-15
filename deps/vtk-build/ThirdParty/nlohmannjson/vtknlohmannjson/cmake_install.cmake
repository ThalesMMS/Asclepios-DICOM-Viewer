# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-install")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/adl_serializer.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/byte_container_with_subtype.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/json.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/json_fwd.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/ordered_map.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/conversions" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/conversions/from_json.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/conversions" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/conversions/to_chars.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/conversions" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/conversions/to_json.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/exceptions.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/hash.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/binary_reader.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/input_adapters.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/json_sax.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/lexer.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/parser.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/input" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/input/position_t.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/internal_iterator.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/iter_impl.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/iteration_proxy.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/iterator_traits.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/json_reverse_iterator.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/iterators" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/iterators/primitive_iterator.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/json_pointer.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/json_ref.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/macro_scope.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/macro_unscope.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std/begin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/call_std/end.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/cpp_future.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/detected.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/identity_tag.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/is_sax.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/type_traits.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/meta" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/meta/void_t.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/output" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/output/binary_writer.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/output" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/output/output_adapters.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail/output" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/output/serializer.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/string_escape.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/detail" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/detail/value_t.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley/hedley.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.3/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk/ThirdParty/nlohmannjson/vtknlohmannjson/include/vtknlohmann/thirdparty/hedley/hedley_undef.hpp")
endif()

