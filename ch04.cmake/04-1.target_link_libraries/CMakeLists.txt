## ch04.cmake/04-1.target_link_libraries/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-04-1" LANGUAGES C)

add_library(funcs-static STATIC func1.c func2.c)
set_target_properties(funcs-static PROPERTIES OUTPUT_NAME "funcs" )
add_library(funcs-shared SHARED func1.c func2.c)
set_target_properties(funcs-shared PROPERTIES OUTPUT_NAME "funcs" )

if(1)
	link_directories(${CMAKE_CURRENT_LIST_DIR}/build)
endif()

# set(CMAKE_EXE_LINKER_FLAGS "-dynamic")
add_executable(a.out-shared main.c)
target_link_libraries(a.out-shared funcs -dynamic)

# set(CMAKE_EXE_LINKER_FLAGS "-static")
add_executable(a.out-static main.c)
target_link_libraries(a.out-static funcs -static)

