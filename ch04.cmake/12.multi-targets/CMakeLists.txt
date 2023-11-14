## ch04.cmake/12.multi-targets/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-12" LANGUAGES C)
message(${PROJECT_NAME})
include_directories(${CMAKE_SOURCE_DIR}/headers)
add_library(funcs SHARED func1.c func2.c)
add_executable(a.out main.c)
target_link_libraries(a.out funcs)
add_subdirectory(libs)	
add_subdirectory(exam)

