## ch04.cmake/15.imported/cmake2/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-15-cmake2" LANGUAGES C)
message(${PROJECT_NAME})
# set(CMAKE_VERBOSE_MAKEFILE true)

add_executable(a.out IMPORTED)
set_property(TARGET a.out PROPERTY
             IMPORTED_LOCATION "/home/educafe/bin/a.out")
add_custom_command(OUTPUT test2.c COMMAND a.out)
add_executable(task1 test2.c)
