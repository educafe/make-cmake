## ch04.cmake/08.include/appSrc/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe08-appSrc LANGUAGES C)
message(${PROJECT_NAME})
message(CMAKE_SOURCE_DIR=${CMAKE_CURRENT_LIST_DIR})
message(CMAKE_CURRENT_LIST_DIR=${CMAKE_CURRENT_LIST_DIR})
include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
add_executable(a.out ${CMAKE_CURRENT_LIST_DIR}/main.c)
target_link_libraries(a.out funcs)
