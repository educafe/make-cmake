## ch04.cmake/12.multi-targets/srcs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe12-srcs LANGUAGES C)
message(${PROJECT_NAME})
if(${CMAKE_CURRENT_LIST_DIR} STREQUAL $ENV{PWD})
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
	include(${CMAKE_CURRENT_LIST_DIR}/../libs/CMakeLists.txt)
	add_library(funcs SHARED $ENV{PWD}/../func1.c $ENV{PWD}/../func2.c)
endif()
add_executable(exam2 exam2.c)
target_link_libraries(exam2 myfuncs funcs)

