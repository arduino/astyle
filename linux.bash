#!/bin/bash -e

cd astyle-code/AStyle/build/gcc/

make clean

CFLAGS="-m64 -Os" LDFLAGS="-m64 -s" make java

cp bin/libastyle*.so ../../../../libastylej64.so

make clean

CFLAGS="-m32 -Os" LDFLAGS="-m32 -s" make java

cp bin/libastyle*.so ../../../../libastylej32.so

