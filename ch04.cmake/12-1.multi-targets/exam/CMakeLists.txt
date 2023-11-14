## ch04.cmake/12-1.multi-targets/srcs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe12-1-srcs LANGUAGES C)
message(${PROJECT_NAME})
if(${CMAKE_CURRENT_LIST_DIR} STREQUAL $ENV{PWD})
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
	include(${CMAKE_CURRENT_LIST_DIR}/../libs/CMakeLists.txt)
endif()
add_executable(exam2 exam2.c)
target_link_libraries(exam2 myfuncs funcs)

