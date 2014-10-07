#!/bin/bash -e

if [ "x$JAVA_HOME" == "x" ] ; then
	export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/Current/Headers/"
fi

cd astyle-code/AStyle/build/mac/

make clean

CFLAGS="-arch i386 -arch x86_64 -Os" LDFLAGS="-arch i386 -arch x86_64 -liconv" make java

cp bin/libastylej.dylib ../../../../libastylej.jnilib

