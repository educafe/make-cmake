## ch04.cmake/08.include/libs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe08-libs LANGUAGES C)
message(${PROJECT_NAME})
message(CMAKE_SOURCE_DIR=${CMAKE_SOURCE_DIR})
message(CMAKE_CURRENT_LIST_DIR=${CMAKE_CURRENT_LIST_DIR})
message(CURRENT_WROKING_DIR=$ENV{PWD})
if(${CMAKE_CURRENT_LIST_DIR} STREQUAL $ENV{PWD})
	include_directories(../headers)
endif()
set(SRCS ${CMAKE_CURRENT_LIST_DIR}/func1.c ${CMAKE_CURRENT_LIST_DIR}/func2.c)
add_library(funcs SHARED ${SRCS})

