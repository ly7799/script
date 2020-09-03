#!/bin/bash

var1=BUILD/
var2=RELEASE/
cd OpenNetworkLinux

for line in `cat .gitignore`
	do
		if [ "$line" = "$var1" ]
		then
			echo "跳过"
			find . -name "BUILD" | xargs rm -rf
		elif [ "$line" = "$var2" ]
		then
			echo "跳过"
			find . -name "BUILD" | xargs rm -rf

		else
			echo "找到"
			find . -name "$line"
			find . -name "$line" -delete
		fi
		echo $line
    done
