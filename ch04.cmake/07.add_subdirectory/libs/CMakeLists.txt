## ch04_cmake/07.add_subdirectory/libs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe07-libs LANGUAGES C)
message(${PROJECT_NAME})
message("CMAKE_CURRENT_LIST_DIR : " ${CMAKE_CURRENT_LIST_DIR})
set(SRCS ${CMAKE_CURRENT_LIST_DIR}/func1.c ${CMAKE_CURRENT_LIST_DIR}/func2.c)

# Using source codes in the current directory with add_subdirectory is OK but
# but results in failure when using include() in build top 
# set(SRCS func1.c func2.c)
if(0)
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../headers)
endif()
add_library(funcs SHARED ${SRCS})

