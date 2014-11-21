#!/bin/bash -e

cd astyle-code/AStyle/build/mac/

make clean

CFLAGS="-arch i386 -arch x86_64 -Os" LDFLAGS="-arch i386 -arch x86_64 -liconv" make java

cp bin/libastyle*.dylib ../../../../libastylej.jnilib

