## ch04_cmake/15.imported/cmake1/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-15-cmake1" LANGUAGES C)
message(${PROJECT_NAME})
# set(CMAKE_VERBOSE_MAKEFILE true)

add_executable(a.out test1.c )
set(CMAKE_INSTALL_PREFIX /home/educafe/)
install(TARGETS a.out)