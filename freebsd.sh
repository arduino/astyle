#!/bin/sh -e

JAVA_INCLUDE_PATH=/usr/local/openjdk8/include

cd astyle-code/AStyle/build/clang/

gmake clean

CFLAGS="-m64 -Os -I$JAVA_INCLUDE_PATH -I$JAVA_INCLUDE_PATH/freebsd/" LDFLAGS="-m64 -s" gmake java

cp bin/libastyle*.so ../../../../libastylej64.so

gmake clean

CFLAGS="-m32 -Os -I$JAVA_INCLUDE_PATH -I$JAVA_INCLUDE_PATH/freebsd/" LDFLAGS="-m32 -s" gmake java

cp bin/libastyle*.so ../../../../libastylej32.so

