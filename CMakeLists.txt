cmake_minimum_required(VERSION 3.16)
project(parser)

include_directories(${CMAKE_SOURCE_DIR}/libs/boost)
add_subdirectory(libs)
add_subdirectory(ConfigReader)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} LINK_PUBLIC boostAsio boostBeast boostJson ConfigReader)
