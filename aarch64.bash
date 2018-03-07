#!/bin/bash -e

cd astyle-code/AStyle/build/gcc/

make clean

CFLAGS="-Os" LDFLAGS="-s" make java

cp bin/libastyle*.so ../../../../libastylej_aarch64.so
