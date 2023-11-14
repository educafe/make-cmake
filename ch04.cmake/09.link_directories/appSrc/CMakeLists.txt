## ch04.cmake/09.link-directory/appSrc/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-09-appSrc" LANGUAGES C)
message(${PROJECT_NAME})
include_directories(${CMAKE_SOURCE_DIR}/../headers)

set(lib_build no)

if(lib_build)
	include(${CMAKE_CURRENT_LIST_DIR}/../libs/CMakeLists.txt)	
else()	
	# This case includes RUNPATH in a.out
	link_directories($ENV{HOME}/lib)

	# This case also includes RUNPATH in a.out
	# find_library(FUNCS funcs PATHS $ENV{HOME}/lib)

	# In this case, LD_LIBRARY_PATH needs to be defined.....
	# set(CMAKE_EXE_LINKER_FLAGS "-L $ENV{HOME}/lib -lfuncs")
endif()

link_libraries(funcs)
# link_libraries(${FUNCS})
add_executable(a.out main.c)
# target_link_libraries(a.out funcs)
# target_link_libraries(a.out ${FUNCS})

