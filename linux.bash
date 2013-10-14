#!/bin/bash -e

if [ "x$JAVAINCS" == "x" ] ; then
	export JAVAINCS="-I/usr/lib/jvm/default-java/include -I/usr/lib/jvm/default-java/include/linux"
fi

cd astyle-code/AStyle/build/gcc/

make clean

CFLAGS="-m64" LDFLAGS="-m64" make java

cp bin/libastylej.so ../../../../libastylej64.so

make clean

CFLAGS="-m32" LDFLAGS="-m32" make java

cp bin/libastylej.so ../../../../libastylej32.so

