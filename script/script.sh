#!/usr/bin/env bash 
CONST_HOME="$1"

cd $CONST_HOME
tDirs=$(ls)
for dir in ${tDirs[*]}; do
	echo $dir
done







