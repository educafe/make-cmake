## ch04_cmake/05.variables-set/01.CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-05" LANGUAGES C)
set(SRCS main.c)
set(LIBS func1.c func2.c)
message(LIBS= "${LIBS}")
message(STATUS SRCS= "${SRCS}")
add_executable(a.out-all ${SRCS} ${LIBS})
add_library(funcs SHARED ${LIBS})
link_libraries(funcs)
add_executable(a.out ${SRCS})
set_target_properties(a.out-all PROPERTIES LINK_FLAGS "-static")
set_target_properties(a.out PROPERTIES LINK_FLAGS "-dynamic")

