#!/bin/bash

# 安装 vim 和 git 软件包
sudo apt-get update
sudo apt-get install -y vim git net-tools openssh-server curl

# 修改当前用户密码为 666666
echo "当前用户密码将被修改为 666666"
echo -e "666666\n666666" | sudo passwd $(whoami)

# 取消 root 用户输入密码的要求
sudo sed -i 's/^%sudo\tALL=(ALL:ALL) ALL$/%sudo\tALL=(ALL:ALL) NOPASSWD:ALL/' /etc/sudoers

# 输出当前的可用 IP 地址
ip=$(curl -s ifconfig.me)
echo "当前的可用 IP 地址是：$ip"

echo "脚本执行完毕！"
