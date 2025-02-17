cmake_minimum_required(VERSION 3.29)
set(CMAKE_CXX_STANDARD 23)
set(BUILD_SHARED_LIBS ON)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

project(imgui)

option(RL_BRIDGE_RAYLIB_LIBRARY "Path to raylib" "")

if(NOT RL_BRIDGE_RAYLIB_LIBRARY)
  message("Must Set RL_BRIDGE_RAYLIB_LIBRARY path to raylib")
  return()
endif()

find_library(
  RL_BRIDGE_RAYLIB_LIBRARY
  NAMES raylib
  HINTS "${RL_BRIDGE_RAYLIB_DIR}/lib" REQUIRED)

message(STATUS "RAYLIB_DIR: ${RL_BRIDGE_RAYLIB_DIR}")
message(STATUS "RAYLIB_LIBRARY: ${RL_BRIDGE_RAYLIB_DIR}")

include_directories(include/)
include_directories(${RL_BRIDGE_RAYLIB_DIR}/include)

file(GLOB CXX_SRC "src/*.h" "src/*.cpp")

add_library(${PROJECT_NAME} SHARED ${CXX_SRC})
target_link_libraries(${PROJECT_NAME} PRIVATE ${RL_BRIDGE_RAYLIB_LIBRARY})
