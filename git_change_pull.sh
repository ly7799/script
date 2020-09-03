#!/bin/bash
#子目录名
subdirname1=git
subdirname2=gitlab_external
subdirname3=github

project_path=$(cd `dirname $0`; pwd)
project_name="${project_path##*/}"
echo $project_path
echo $project_name

#建立缓存文件
#touch templefile

#pull函数
pull_branch(){
        cd $line
        branch=$(git branch -l | grep "^*")
        branch_name="${branch:2}"
        git remote -v
        git pull origin $branch_name
        echo $line
        echo "退出当前目录$line"
        cd ..
    }
#列出当前文件夹所有目录
dir=$(ls -l $pwd |awk '/^d/ {print $NF}')
for line in $dir
do


    echo "进入目录$line"
    cd $line
    if [ $line == $subdirname1 ] || [ $line == $subdirname2 ] || [ $line == $subdirname3 ]
    then
        dir2=$(ls -l $pwd |awk '/^d/ {print $NF}')
        for line in $dir2
            do
                pull_branch
            done

    else
        #cd $line
        branch=$(git branch -l | grep "^*")
        branch_name="${branch:2}"
        git remote -v
        git pull origin $branch_name
        echo $line
        echo "退出当前目录$line"
    fi
    cd ..
done

#结束---------------------------------------------------------------------
