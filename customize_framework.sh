#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out
SEP_FRAME="secondary-framework.jar.out"

if [ $2 = "$BUILD_OUT/secondary-framework" ]
then
for file in overlay/secondary-framework/*.patch
    do
cp $file out/
        cd out
        git.apply `basename $file`
        cd ..
        for file2 in `find $2 -name *.rej`
        do
echo "$file2 fail"
            exit 1
        done
done
fi

if [ $2 = "$BUILD_OUT/framework" ]
then
for file in overlay/framework/*.patch
    do
cp $file out/
        cd out
        git.apply `basename $file`
        cd ..
        for file2 in `find $2 -name *.rej`
        do
echo "$file2 fail"
            exit 1
        done
done
fi