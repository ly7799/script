#!/bin/bash

project_path=$(cd `dirname $0`; pwd)
project_name="${project_path##*/}"
echo $project_path
echo $project_name
#建立缓存文件
#touch templefile

#列出当前文件夹所有目录
dir=$(ls -l $pwd |awk '/^d/ {print $NF}')
for line in $dir
do


    echo "进入目录$line"
    cd $line
    branch=$(git branch -l | grep "^*")
    branch_name="${branch:2}"
    git remote -v
    git pull origin $branch_name
    echo $line
    echo "退出当前目录$pwd"
    cd ..



done
