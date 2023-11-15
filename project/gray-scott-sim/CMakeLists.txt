cmake_minimum_required(VERSION 3.10)
project(GrayScottSimulation)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(../googletest googletest)

add_executable(GrayScottSimulator gs.cpp)

add_executable(GSTests tests/test_gs.cpp gs.cpp)
target_link_libraries(GSTests gtest_main)
target_compile_definitions(GSTests PRIVATE TESTING)
