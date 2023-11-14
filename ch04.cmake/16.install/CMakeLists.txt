## ch04.cmake/16.install/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project ("educafe-16" LANGUAGES C)
message(${CMAKE_PROJECT_NAME})

# set(CMAKE_INSTALL_RPATH "/home/educafe/lib")
# set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} \
			-Wl,-rpath=/home/educafe/lib")

set (SRCS main.c func1.c func2.c)
add_executable (a.out ${SRCS})

set(SRCS min.c max.c )
add_library(funcs-objs OBJECT ${SRCS})
set_target_properties(funcs-objs PROPERTIES POSITION_INDEPENDENT_CODE 1)

add_library(funcs-static STATIC $<TARGET_OBJECTS:funcs-objs>)
set_target_properties(funcs-static PROPERTIES OUTPUT_NAME "funcs" )
# set_property(TARGET funcs-static PROPERTY OUTPUT_NAME "funcs" )
add_library(funcs-shared SHARED $<TARGET_OBJECTS:funcs-objs>)
set_target_properties(funcs-shared PROPERTIES OUTPUT_NAME "funcs" )
# set_property(TARGET funcs-shared PROPERTY OUTPUT_NAME "funcs" )
target_link_libraries(a.out funcs-shared)

set(CMAKE_INSTALL_PREFIX /home/educafe)

install (TARGETS a.out funcs-static funcs-shared
	RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
	LIBRARY DESTINATION "/home/educafe/lib"
	ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR} 
)

# find /usr -name "a.out" -delete

