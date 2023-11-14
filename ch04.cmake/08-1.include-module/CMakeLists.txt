## ch04_cmake/08-1.include/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-08-1" LANGUAGES C)
set(Using-CMake-Module-Path yes)
if(Using-CMake-Module-Path)
	list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/appSrc")
	list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/libs")
	include(main)	
	include(libs)
else()
	include(${CMAKE_CURRENT_LIST_DIR}/appSrc/main.cmake)	
	include(${CMAKE_CURRENT_LIST_DIR}/libs/libs.cmake)
endif()

# Module -----
# When given a module name, the include() command will look in 
# a well-defined set of locations for a file whose name is 
# the name of the module (case-sensitive) with .cmake appended.
# When looking for a module’s file, CMake first consults the variable 
# CMAKE_MODULE_PATH. 
# This is assumed to be a list of directories and CMake will search 
# each of these in order. The first matching file will be used, 
# or if no matching file is found or 
# if CMAKE_MODULE_PATH is empty or undefined, CMake will then search 
# in its own internal module directory.
