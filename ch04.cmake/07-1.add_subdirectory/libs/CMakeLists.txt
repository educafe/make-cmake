## ch04.cmake/07-1.add_subdirectory/libs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe07-1-libs LANGUAGES C)
message(${PROJECT_NAME})
message(CMAKE_CURRENT_LIST_DIR=${CMAKE_CURRENT_LIST_DIR})
set(SRCS ${CMAKE_CURRENT_LIST_DIR}/func1.c ${CMAKE_CURRENT_LIST_DIR}/func2.c)
if(1)
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
endif()
add_library(funcs SHARED ${SRCS})
# add_library(funcs STATIC ${SRCS})

