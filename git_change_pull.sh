#!/bin/bash

project_path=$(cd `dirname $0`; pwd)
project_name="${project_path##*/}"
echo $project_path
echo $project_name
#列出当前文件夹所有目录
dir=$(ls -l $pwd |awk '/^d/ {print $NF}')
for line in $dir
do


    echo "进入目录$line"
    cd $line
    git remote -v
    git pull origin master
    echo $line
    echo "退出当前目录$pwd"
    cd ..



done
