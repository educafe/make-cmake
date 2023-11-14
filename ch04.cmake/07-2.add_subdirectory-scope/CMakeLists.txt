## ch04.cmake/07-2.add_subdirectory-scope/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-07-2" LANGUAGES C)
set(myVar hello)
message("Parent (before): myVar = ${myVar}")
message("Parent (before): childVar = ${childVar}")
add_subdirectory(mysub)
message("Parent (after): myVar = ${myVar}")
message("Parent (after): childVar = ${childVar}")

