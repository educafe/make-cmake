## ch04_cmake/02.add_library/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-02" LANGUAGES C)
if(1)
	add_library(funcs STATIC func1.c func2.c)
else()
	add_library(funcs SHARED func1.c func2.c)
endif()

if(1)
	set_target_properties(funcs PROPERTIES
		LIBRARY_OUTPUT_DIRECTORY $ENV{HOME}/lib
		ARCHIVE_OUTPUT_DIRECTORY $ENV{HOME}/lib
	)
endif()

