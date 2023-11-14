## ch04_cmake/06.option/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-06" LANGUAGES C)
set(SRCS main.c)
set(LIBS func1.c func2.c)
message(LIBS= "${LIBS}")
message(STATUS SRCS= "${SRCS}")
set(BUILD_LIB OFF)
option(BUILD_LIB "To build library or not" ON)
if(BUILD_LIB)
	add_library(funcs ${LIBS})
	link_libraries(funcs)
	add_executable(a.out ${SRCS})
else()
	add_executable(a.out ${SRCS} ${LIBS})
endif()

# Normal variables take precedence over cache variables 
# when the name of both variables are the same
# In this example, if set command defines a variable BUILD_LIB 
# then, cache variable 'BUILD_LIB' defined by option() is not
# stored in cache, or CMakeCache.txt file

