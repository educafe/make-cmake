## ch04.cmake/03.link_libraries-static/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-03" LANGUAGES C)
# set(CMAKE_EXE_LINKER_FLAGS "-static")
add_library(funcs STATIC func1.c func2.c)
set_target_properties(funcs PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY $ENV{HOME}/lib
)
if(1)
	link_libraries(funcs)
else()
	link_libraries(funcs -static)
endif()
add_executable(a.out main.c)
# set_target_properties(a.out PROPERTIES LINK_FLAGS "-static")
# get_property(property TARGET a.out PROPERTY LINK_FLAGS)
# message("LINK_FLAGS : ${property}")

# cat CMakeCache.txt | grep CMAKE_EXE_LINKER_FLAGS