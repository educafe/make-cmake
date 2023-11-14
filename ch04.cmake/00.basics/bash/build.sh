#!/bin/bash
CC=gcc
CFLAGS="-c -O2 -Wall"
SRCS="main.c func1.c func2.c"
OBJS="main.o func1.o func2.o"

echo "Project Build..."

echo ""
for src in ${SRCS}
do 
	echo -n "Compile : "
	echo "$CC $CFLAGS $src"
	$CC $CFLAGS $src
done

echo -n "Build : "
echo "$CC -o a.out ${OBJS}"
$CC -o a.out ${OBJS}

echo ""
echo "Build Completed!!"

exit 0

