## \ch02.make\02.rules\06.silent.Makefile
.SILENT: dir01 dir02
a.out : dir01/file01 dir01/file02
	tar -cf a.out dir01/file01 dir01/file02

dir01/file01 : dir01 | dir02
	cd dir01 && echo "I am file01" > file01
	cp dir01/file01 dir02
	
dir01/file02 : dir01
	cd dir01 && echo "I am file 02" > file02

dir01 :
	mkdir dir01
	
dir02:
	mkdir dir02
	
clean :
	rm -r a.out dir01 dir02




