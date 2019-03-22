cmake_minimum_required(VERSION 3.0)
project(hello-daocloud)
include_directories(
    include
)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)


set(SOURCE src/main.cpp src/factorial.cpp)
add_executable(${PROJECT_NAME} ${SOURCE})

enable_testing()

add_executable(test-factorial tests/test_factorial.cpp src/factorial.cpp)
add_test(
    NAME test-factorial
    COMMAND ./bin/test-factorial 
)

add_executable(test-factorial-fail tests/test_factorial_fail.cpp src/factorial.cpp)
add_test(
    NAME test-factorial-fail
    COMMAND ./bin/test-factorial-fail
)