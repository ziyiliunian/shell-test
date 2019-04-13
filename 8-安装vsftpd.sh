#!/bin/bash
#管理员安装vsftp服务
if [ $UID -eq 0 ];then
     yum -y install vsftpd
else
    echo "您不是管理员，不能安装"
fi
