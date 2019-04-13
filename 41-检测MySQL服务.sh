#!/bin/bash
#
read -p "请输入主机名或ip：" host
read -p "请输入用户名：" name
read -p "请输入密码：" pass
mysqladmin -h $host -u $name -p'$pass' ping &>/dev/null
if [ $? -eq 0 ];then
	 echo "MySQL is up"
else
	 echo "MySQL is down"
fi
