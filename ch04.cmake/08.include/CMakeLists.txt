## ch04.cmake/08.include/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-08" LANGUAGES C)
message(${PROJECT_NAME})
message(CMAKE_SOURCE_DIR=${CMAKE_SOURCE_DIR})
message(CMAKE_CURRENT_LIST_DIR=${CMAKE_CURRENT_LIST_DIR})
message(CURRENT_WROKING_DIR=$ENV{PWD})

if(1)
	include_directories(${CMAKE_CURRENT_LIST_DIR}/headers)
else()
	set_property(DIRECTORY ${CMAKE_CURRENT_LIST_DIR} 
		PROPERTY INCLUDE_DIRECTORIES ${CMAKE_CURRENT_LIST_DIR}/headers)
endif()

if(0)
	include (libs/CMakeLists.txt)
	include(appSrc/CMakeLists.txt)
else()
	add_subdirectory(appSrc)
	add_subdirectory(libs)
endif()
