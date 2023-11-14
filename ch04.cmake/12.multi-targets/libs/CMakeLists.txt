## ch04.cmake/12.multi-targets/libs/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project(educafe12-libs LANGUAGES C)
message(${PROJECT_NAME})
set(SRCS ${CMAKE_CURRENT_LIST_DIR}/min.c ${CMAKE_CURRENT_LIST_DIR}/max.c )
add_library(myfuncs SHARED ${SRCS})

