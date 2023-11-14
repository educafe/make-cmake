## ch04.cmake/14.add_custom_command/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-14" LANGUAGES C)
include_directories(${CMAKE_CURRENT_LIST_DIR}/headers)
set(HEADERS "${CMAKE_CURRENT_LIST_DIR}/headers")

add_custom_target(untar 
	# COMMAND ${CMAKE_COMMAND} -E chdir ${HEADERS} tar xf "${CMAKE_CURRENT_LIST_DIR}/backup/headers.tar"
	WORKING_DIRECTORY ${HEADERS}
	COMMAND tar xf "${CMAKE_CURRENT_LIST_DIR}/backup/headers.tar"
	COMMENT "Unpacking headers.tar in headers directory -----"
	DEPENDS ${HEADERS}
)

add_custom_command(OUTPUT ${HEADERS}
	# COMMAND ${CMAKE_COMMAND} -E make_directory ${HEADERS}
	COMMAND mkdir ${HEADERS}
	COMMENT "Making headers directory in the current list directory -----"
)

add_executable(a.out main.c func1.c func2.c)
add_dependencies(a.out untar)
