## \ch02.make\02.rules\05.depedency.Makefile

a.out : dir01/file01 dir01/file02 
	tar -cf a.out dir01/file01 dir01/file02

dir01/file01 : dir01
	cd dir01 && echo "I am file01" > file01
	
dir01/file02 : dir01
	cd dir01 && echo "I am file 02" > file02

dir01 :
	mkdir dir01

clean :
	rm -r a.out dir01


