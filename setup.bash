#!/bin/bash -e

rm -rf astyle-code

svn co svn://svn.code.sf.net/p/astyle/code/tags/2.05 astyle-code

cd astyle-code
for f in `ls ../patches/*.patch` ; do
	patch -p0 < ../patches/$f
done

