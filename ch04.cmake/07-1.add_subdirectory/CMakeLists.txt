## ch04_cmake/07-1.add_subdirectory/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-07-1" LANGUAGES C)
message(${PROJECT_NAME})
message("CMAKE_CURRENT_LIST_DIR : " ${CMAKE_CURRENT_LIST_DIR})
include_directories(${CMAKE_CURRENT_LIST_DIR}/headers)
add_subdirectory(libs)
add_subdirectory(appSrc)


