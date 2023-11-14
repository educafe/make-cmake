## ch04.cmake/04.target_link_libraries/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-04" LANGUAGES C)

add_library(funcs SHARED func1.c func2.c)
set_target_properties(funcs PROPERTIES
	LIBRARY_OUTPUT_DIRECTORY $ENV{HOME}/lib
)

add_executable(a.out main.c)
target_link_libraries(a.out funcs)
set_target_properties(a.out PROPERTIES INSTALL_RPATH "$ENV{HOME}/lib")
# set_target_properties(a.out PROPERTIES BUILD_WITH_INSTALL_RPATH TRUE)
