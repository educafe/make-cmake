## ch04_cmake/05-3.variables-string/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-05-03" LANGUAGES C)
set (SRCS main.c)
string(APPEND SRCS ";func1.c")
string(APPEND SRCS ";func2.c")
message("SRCS : ${SRCS}")
add_executable(a.out ${SRCS})


