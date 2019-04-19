#!/bin/bash
#提示用户输入用户名和密码,脚本自动创建相应的账户及配置密码。如果用户
#不输入账户名,则提示必须输入账户名并退出脚本;如果用户不输入密码,则统一使用默
#认的 123456 作为默认密码
read -p "请输入用户名" name
if [ -z "$name" ] ;then
    echo "请输入账户名"
    exit 2
fi
#使用stty -echo 关闭shell回显
#使用stty echo 开启shell回显
stty -echo
read -p "请输入密码"   pass
stty echo
    useradd $name
    echo ${pass:-123456} | passwd --stdin $name
