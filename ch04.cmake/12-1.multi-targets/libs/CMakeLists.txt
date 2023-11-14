## ch04.cmake/12-1.multi-targets/libs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe12-1-libs LANGUAGES C)
message(${PROJECT_NAME})
if(${CMAKE_CURRENT_LIST_DIR} STREQUAL $ENV{PWD})
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
endif()
set(SRCS ${CMAKE_CURRENT_LIST_DIR}/min.c ${CMAKE_CURRENT_LIST_DIR}/max.c )
add_library(myfuncs SHARED ${SRCS})
add_library(funcs SHARED ${CMAKE_CURRENT_LIST_DIR}/func1.c ${CMAKE_CURRENT_LIST_DIR}/func2.c)

