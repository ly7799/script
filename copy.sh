#!/bin/sh
output=/home/luojie/ONL/OpenNetworkLinux/REPO/stretch/packages/binary-arm64/
github=/home/luojie/github/ONLP/REPO/stretch/packages/binary-arm64/
SVN=/home/luojie/SVN/trunk_temp/github/ONLP/REPO/stretch/packages

echo "拷贝ONL 编译输出的ONLP相关的deb包到GitHub目录及SVN路径下"
echo "进入目录 ${output}"
ls -alh ${output}
#拷贝
echo "拷贝到${github}"
echo "拷贝到${SVN}"
sudo cp -r /home/luojie/ONL/OpenNetworkLinux/REPO/stretch/packages/binary-arm64/* /home/luojie/SVN/trunk_temp/github/ONLP/REPO/stretch/packages/binary-arm64/
sudo cp -r /home/luojie/ONL/OpenNetworkLinux/REPO/stretch/packages/binary-arm64/* /home/luojie/github/ONLP/REPO/stretch/packages/binary-arm64/
sudo cp -r /home/luojie/ONL/OpenNetworkLinux/REPO/stretch/packages/binary-arm64/* /home/luojie/github/ONLP_package/REPO/stretch/packages/binary-arm64/
echo "deb 包拷贝完成------------------------------------------------"
