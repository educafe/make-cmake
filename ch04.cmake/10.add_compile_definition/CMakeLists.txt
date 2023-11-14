## ch04.cmake/10.add_compile_definition/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-10" LANGUAGES C)
include_directories(${CMAKE_SOURCE_DIR}/headers)
add_compile_options(-Wall)
add_compile_definitions(MYNUM)
# add_definitions(-DMYNUM -Wall)
add_library(funcs SHARED func1.c func2.c)	
add_executable(a.out main.c)
target_link_libraries(a.out funcs)

