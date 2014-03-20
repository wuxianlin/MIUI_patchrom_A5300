#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "MiuiSystemUI" ];then
    cp $1/interface.patch out/
	cd out 
	$GIT_APPLY interface.patch
	cd ..
	for file in `find $2 -name *.rej`
	do
	echo "Settings patch fail"
		exit 1
	done
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
	$XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW
    cp $1/header.patch out/
    cd out
    ../../tools/rmline.sh Settings/res/xml/settings_headers.xml
    $GIT_APPLY header.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "StockromSettings patch fail"
        exit 1
    done
    cp $1/led.patch out/
    cd out
    ../../tools/rmline.sh Settings/smali/com/android/settings/LedSettings.smali
    $GIT_APPLY led.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "led patch fail"
        exit 1
    done
    cp $1/settings.patch out/
    cd out
    $GIT_APPLY settings.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "settings patch fail"
        exit 1
    done
    cp $1/res.patch out/
    cd out
    $GIT_APPLY res.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "StockromSettings patch fail"
        exit 1
    done
    cp $1/rescn.patch out/
    cd out
    $GIT_APPLY rescn.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "StockromSettings patch fail"
        exit 1
    done
    cp $1/restw.patch out/
    cd out
    $GIT_APPLY restw.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "StockromSettings patch fail"
        exit 1
    done
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	#appendPart $1
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
    appendPart $1
fi

if [ $1 = "MiuiHome" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    cp $1/workspace.patch out/
    cd out
    $GIT_APPLY workspace.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "workspace patch fail"
        exit 1
    done
fi
