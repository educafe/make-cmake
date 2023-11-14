## ch04.cmake/17.cross-compile/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-17" LANGUAGES C)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR ARM)
set(CMAKE_C_COMPILER /usr/bin/arm-linux-gnueabihf-gcc-11)
set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_BUILD_TYPE release)
add_executable(a.out main.c func1.c func2.c)

