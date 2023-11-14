## ch04.cmake/09.link-directory/libs/CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(educafe09-libs LANGUAGES C)
message(${PROJECT_NAME})
message("CMAKE_CURRENT_LIST_DIR : " ${CMAKE_CURRENT_LIST_DIR})
set(SRCS ${CMAKE_CURRENT_LIST_DIR}/func1.c ${CMAKE_CURRENT_LIST_DIR}/func2.c)
if(${CMAKE_CURRENT_LIST_DIR} STREQUAL $ENV{PWD})
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
endif()
add_library(funcs SHARED ${SRCS})
set_target_properties(funcs PROPERTIES
	LIBRARY_OUTPUT_DIRECTORY $ENV{HOME}/lib
)
