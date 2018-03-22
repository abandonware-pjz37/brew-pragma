cmake_minimum_required(VERSION 3.2)
project(brew-pragma)

try_compile(
    try_compile_result
    "${CMAKE_CURRENT_BINARY_DIR}/_test"
    "${CMAKE_CURRENT_LIST_DIR}/main.cpp"
    OUTPUT_VARIABLE outresult
)

if(NOT try_compile_result)
  message(FATAL_ERROR "Compilation failed")
endif()

string(REGEX REPLACE ".*BEGIN_(.*)_END.*" "\\1" new_outresult "${outresult}")
string(COMPARE EQUAL "${new_outresult}" "${outresult}" nothing)
if(nothing)
  message("No pragma messages found")
else()
  message("Pragma message: ${new_outresult}")
endif()

add_custom_target(
    cccfg
    ALL
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_LIST_DIR}/script.cmake
)
