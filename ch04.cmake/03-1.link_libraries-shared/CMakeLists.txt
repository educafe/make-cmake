## ch04.cmake/03-1.link_library-shared/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-03-1" LANGUAGES C)

# set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
# set(CMAKE_INSTALL_RPATH "$ENV{HOME}/lib")

add_library(funcs SHARED func1.c func2.c)
set_target_properties(funcs PROPERTIES
	LIBRARY_OUTPUT_DIRECTORY $ENV{HOME}/lib
)
link_libraries(funcs)
add_executable(a.out main.c)
set_target_properties(a.out PROPERTIES INSTALL_RPATH "$ENV{HOME}/lib")
# set_target_properties(a.out PROPERTIES BUILD_WITH_INSTALL_RPATH TRUE)

