## ch04_cmake/05-2.variables-list/CMakeLists.txt
cmake_minimum_required(VERSION 3.22)
project("educafe-05-2" LANGUAGES C)

set(myList a b c)
list(LENGTH myList len)
message("length = ${len}")
list(GET myList 0 1 2  letters)
message("letters = ${letters}")

list(INSERT myList 2 X Y Z)
message("myList (first) = ${myList}")
list(APPEND myList d e f)
message("myList (second) = ${myList}")
list(PREPEND myList P Q R)
message("myList (third) = ${myList}")

set(myList a b c d e)
message("myList = ${myList}")
list(FIND myList d index)
message("index(d) = ${index}")

list(REMOVE_ITEM myList d)
message("myList (remove_item d) = ${myList}")
list(REMOVE_AT myList 0)
message("myList (remove_at 0) = ${myList}")

list(REMOVE_DUPLICATES myList)
message("myList (duplicates) = ${myList}")
