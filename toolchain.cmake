execute_process(
    COMMAND xcrun --find clang++
    OUTPUT_VARIABLE _output
    RESULT_VARIABLE _result
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

if(_result EQUAL "0")
  set(CMAKE_CXX_COMPILER ${_output} CACHE PATH "")
else()
  message(FATAL_ERROR "Can't find clang++")
endif()

execute_process(
    COMMAND xcrun --find clang
    OUTPUT_VARIABLE _output
    RESULT_VARIABLE _result
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

if(_result EQUAL "0")
  set(CMAKE_C_COMPILER ${_output} CACHE PATH "")
else()
  message(FATAL_ERROR "Can't find clang")
endif()
