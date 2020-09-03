#!/bin/bash

#子目录名
subdirname1=git
subdirname2=gitlab_external
subdirname3=github

project_path=$(cd `dirname $0`; pwd)
project_name="${project_path##*/}"
echo $project_path
echo $project_name


#push函数
push_branch(){
        branch=$(git branch -l | grep "^*")
        branch_name="${branch:2}"
        git remote -v
        git push origin $branch_name
        #echo $line
        echo "退出当前目录$line"
    }
#列出当前文件夹所有目录

dir=$(ls -l $pwd |awk '/^d/ {print $NF}')
for line in $dir
do
    echo "进入目录$line"
    cd $line
    #判断当前文件夹是否为git 子目录
    if [ $line == $subdirname1 ] || [ $line == $subdirname2 ] || [ $line == $subdirname3 ]
    then
        dir2=$(ls -l $pwd |awk '/^d/ {print $NF}')
        for line in $dir2
            do
                cd $line
                push_branch
                cd ..
            done
    else
        push_branch
        echo "退出当前目录$pwd"
    fi
    cd ..
done
