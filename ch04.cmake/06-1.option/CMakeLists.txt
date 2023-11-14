## ch04_cmake/06-1.option/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-06-1" LANGUAGES C)
set(SRCS main.c)
set(LIBS func1.c func2.c)
message(LIBS= "${LIBS}")
message(STATUS SRCS= "${SRCS}")
set(BUILD_LIB NO CACHE BOOL "To build library funcs" )
if(BUILD_LIB)
	add_library(funcs ${LIBS})
	link_libraries(funcs)
	add_executable(a.out ${SRCS})
else()
	add_executable(a.out ${SRCS} ${LIBS})
endif()

# CACHE type
# 	BOOL
# 	FILEPATH
# 	PATH
# 	STRING


