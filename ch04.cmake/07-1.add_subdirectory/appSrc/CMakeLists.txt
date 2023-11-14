## ch04.cmake/07-1.add_subdirectory/appSrc/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe07-1-appSrc LANGUAGES C)
message(${PROJECT_NAME})
message("CMAKE_CURRENT_LIST_DIR=" ${CMAKE_CURRENT_LIST_DIR})
if(1)
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
endif()
add_executable(a.out main.c)
target_link_libraries(a.out funcs)

