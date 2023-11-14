## ch04.cmake/07.add_subdirectory/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-07" LANGUAGES C)
message(${PROJECT_NAME})
message("PROJECT_SOURCE_DIR : " ${PROJECT_SOURCE_DIR})
message("CMAKE_CURRENT_LIST_DIR : " ${CMAKE_CURRENT_LIST_DIR})

if(1)
	include_directories(${CMAKE_CURRENT_LIST_DIR}/headers)
else()
	set_property(DIRECTORY ${CMAKE_CURRENT_LIST_DIR} 
		PROPERTY INCLUDE_DIRECTORIES ${CMAKE_CURRENT_LIST_DIR}/headers)
endif()

# To execute libs/CMakeLists.txt file in libs directory 
add_subdirectory(libs)

add_executable(a.out main.c)		
target_link_libraries(a.out funcs)
set(CMAKE_EXE_LINKER_FLAGS -dynamic) 

## add_subdirectory(libs) does actually change directory to libs, so that
## in libs directory, SRCS should not include path information such as func1.c
## include(libs/CMakeLists.txt) does actually not change directory to libs, 
## so that in libs directory, SRCS should include path information 
## like ../func1,c
