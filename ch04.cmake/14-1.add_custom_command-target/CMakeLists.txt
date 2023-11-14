## ch04.cmake/14-1.add_custom_command-target/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-14-1" LANGUAGES C)
include_directories(${CMAKE_CURRENT_LIST_DIR}/headers)
set(HEADERS "${CMAKE_CURRENT_LIST_DIR}/headers")

add_custom_target(untar 
	COMMAND ${CMAKE_COMMAND} -E make_directory ${HEADERS}
	# COMMAND mkdir ${HEADERS}
	COMMENT "Making headers directory in the current list directory -----"
)

add_custom_command(TARGET untar POST_BUILD
	WORKING_DIRECTORY ${HEADERS}
	COMMAND tar xf "${CMAKE_CURRENT_LIST_DIR}/backup/headers.tar"
	COMMENT "Unpacking headers.tar in headers directory -----"
)

add_custom_target(myclean
	COMMAND rm -r ${HEADERS}
)
add_executable(a.out main.c func1.c func2.c)
add_dependencies(a.out untar)
