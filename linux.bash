#!/bin/bash -e

cd astyle-code/AStyle/build/gcc/

make clean

CFLAGS="-m64" LDFLAGS="-m64" make java

cp bin/libastylej.so ../../../../libastylej64.so

make clean

CFLAGS="-m32" LDFLAGS="-m32" make java

cp bin/libastylej.so ../../../../libastylej32.so

