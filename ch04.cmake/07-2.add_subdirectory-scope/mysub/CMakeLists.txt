## ch04.cmake/07-2.add_subdirectory-scope/mysub/CMakeLists.txt
cmake_minimum_required(VERSION 3.0)
project(mysub LANGUAGES C)

message("Child (before): myVar = ${myVar}")
message("Child (before): childVar = ${childVar}")
if(0)
	set(myVar world)
	set(childVar goodman)
else()
	set(myVar world PARENT_SCOPE)
	set(childVar goodman PARENT_SCOPE)
endif()
message("Child (after): myVar = ${myVar}")
message("Child (after): childVar = ${childVar}")

