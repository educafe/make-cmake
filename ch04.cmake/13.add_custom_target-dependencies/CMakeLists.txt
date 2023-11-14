## ch04.cmake/13.add_custom_target-dependencies/CMakeLists.txt

cmake_minimum_required(VERSION 3.22)
project("educafe-13" LANGUAGES C)
message(${PROJECT_NAME})

set (SRCS main.c func1.c func2.c)
add_executable (a.out ${SRCS})
add_dependencies(a.out untar)

add_custom_target(untar
	COMMENT "Untar headers.tar file in current source directory ....."
	WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
	COMMAND tar xf headers.tar
)

add_custom_target(myclean
	COMMENT "Remove all header files in current source directory ....."
	WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
	COMMAND rm -r *.h
)

