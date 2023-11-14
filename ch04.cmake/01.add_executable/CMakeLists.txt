## ch04_cmake/01.add_executable/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-01" LANGUAGES C)
add_executable(a.out main.c func1.c func2.c)
if(1)
	set_target_properties(a.out PROPERTIES
		RUNTIME_OUTPUT_DIRECTORY $ENV{HOME}/bin
	)
endif()
