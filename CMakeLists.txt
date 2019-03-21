cmake_minimum_required(VERSION 3.0)
project(hello-daocloud)
set(SOURCE src/main.cpp src/factorial.cpp)

include_directories(
    include
)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)

add_executable(${PROJECT_NAME} ${SOURCE})
