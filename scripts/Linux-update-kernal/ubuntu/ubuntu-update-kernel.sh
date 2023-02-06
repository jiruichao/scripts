#!/bin/bash

#ubuntu离线升级内核

#到官网下载内核 deb 包
#官方地址: https://kernel.ubuntu.com/~kernel-ppa/mainline/ 

#lt 长期支持版
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-modules-5.5.207-0504207-generic_5.4.207-0504207.202207211701_amd64.deb
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-modules-5.4.207-0504207-lowlatency_5.4.207-0504207.202207211701_amd64.deb
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-image-unsigned-5.4.207-0504207-lowlatency_5.4.207-0504207.202207211701_amd64.deb
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-image-unsigned-5.4.207-0504207-generic_5.4.207-0504207.202207211701_amd64.deb
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-headers-5.4.207-0504207_5.4.207-0504207.202207211701_all.deb
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-headers-5.4.207-0504207-lowlatency_5.4.207-0504207.202207211701_amd64.deb
#wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4.207/amd64/linux-headers-5.4.207-0504207-generic_5.4.207-0504207.202207211701_amd64.deb

#安装新版本内核
dpkp -i *.deb

#验证是否使用的是新版本内核
uname -ar

