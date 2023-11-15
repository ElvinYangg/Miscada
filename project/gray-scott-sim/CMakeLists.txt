cmake_minimum_required(VERSION 3.10)
project(GrayScottSimulation)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(../googletest googletest)

add_library(gs_lib gs.cpp)

add_executable(GrayScottSimulator gs.cpp)
target_link_libraries(GrayScottSimulator PRIVATE gs_lib)

add_executable(GSTests tests/test_gs.cpp)
target_link_libraries(GSTests PRIVATE gs_lib gtest_main)
target_compile_definitions(GSTests PRIVATE TESTING)
