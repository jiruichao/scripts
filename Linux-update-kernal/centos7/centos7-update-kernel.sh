#!/bin/bash

#centos7离线升级内核

#到官网下载内核 rpm 包
#官方地址: https://elrepo.org/linux/kernel/el7/x86_64/RPMS/

#lt 长期支持版
#wget https://elrepo.org/linux/kernel/el7/x86_64/RPMS/kernel-lt-5.4.194-1.el7.elrepo.x86_64.rpm
#wget https://elrepo.org/linux/kernel/el7/x86_64/RPMS/kernel-lt-devel-5.4.194-1.el7.elrepo.x86_64.rpm

#ml 最新稳定版
#wget https://elrepo.org/linux/kernel/el7/x86_64/RPMS/kernel-ml-5.18.11-1.el7.elrepo.x86_64.rpm
#wget https://elrepo.org/linux/kernel/el7/x86_64/RPMS/kernel-ml-devel-5.18.10-1.el7.elrepo.x86_64.rpm


#安装新版本内核
#yum -y localinstall kernel-lt-5.4.194-1.el7.elrepo.x86_64.rpm kernel-lt-devel-5.4.194-1.el7.elrepo.x86_64.rpm
yum -y localinstall ./kernel-rpm/*.rpm
#查看系统可用内核
awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg

#并设置内核启动顺序,新版本内核ID 0
grub2-set-default 0

#生成 grub 配置文件
grub2-mkconfig -o /boot/grub2/grub.cfg
echo "please reboot your system quick"

#重启系统
#reboot

#验证是否使用的是新版本内核
#uname -ar

#删除旧内核
#yum -y remove kernel kernel-tools