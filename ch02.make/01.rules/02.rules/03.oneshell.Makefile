## \ch02.make\02.rules\03.oneshell.Makefile
a.out : 
	tar -cf a.out dir01/file01 dir01/file02
	
file01 : 
	mkdir dir01
	cd dir01 &&	echo "I am file01" > file01
	
file02 : 
	mkdir dir01
	cd dir01 && echo "I am file 02" > file02

dir01 :
	mkdir dir01

clean :
	rm -r a.out dir01


