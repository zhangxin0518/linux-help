#!/bin/bash

#============================================================
#软件下载与安装源列表文件
sudo gedit /etc/apt/sources.list
#更新软件下载与安装源列表
sudo apt-get update
#按照源列表更新并安装软件
sudo apt-get upgrade
#强制安装Ubuntu软件中心
sudo apt-get install --reinstall software-center
#============================================================
#查看系统内核信息
uname -a
#查看电脑PCI设备信息
lspci
#查看USB设备
lsusb
#网络配置命令
ifconfig -a
sudo gedit /etc/network/interfaces
/etc/init.d/networking restart
sudo ifconfig eth0 down
sudo ifconfig eth0 up
#查看并设置PATH二进制文件包含路径信息
echo $PATH
在/etc/profile中加下面这个命令
export PATH=$PATH:/home/your_path
source /etc/profile
#Debian软件包管理.deb软件包
sudo dpkg -i #安装软件包
sudo dpkg -r #卸载软件包
#动态库寻找与配置路径的设置
cd /etc/ld.so.conf.d/
sudo gedit name.conf
sudo ldconfig
其中动态库缓存文件为: /etc/ld.so.cache
#修改电脑名字
sudo gedit /etc/hostname
sudo ./etc/hostname
#电脑网卡驱动路径与配置
sudo cp -i iwlwifi-9000-pu-b0-jf-b0-34.ucode /lib/firmware
sudo update-grub
sudo reboot













