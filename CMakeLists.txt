cmake_minimum_required(VERSION 3.29)
set(CMAKE_CXX_STANDARD 23)
set(BUILD_SHARED_LIBS ON)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

project(imgui)

get_filename_component(RAYLIB_DIR ${PROJECT_SOURCE_DIR}/../raylib ABSOLUTE)

find_library(
  RAYLIB_LIBRARY
  NAMES raylib
  HINTS "${RAYLIB_DIR}/lib" REQUIRED)

message(STATUS "RAYLIB_DIR: ${RAYLIB_DIR}")
message(STATUS "RAYLIB_LIBRARY: ${RAYLIB_LIBRARY}")

include_directories(include/)
include_directories(${RAYLIB_DIR}/include)

file(GLOB CXX_SRC "src/*.h" "src/*.cpp")

add_library(${PROJECT_NAME} SHARED ${CXX_SRC})
target_link_libraries(${PROJECT_NAME} PRIVATE ${RAYLIB_LIBRARY})
