#!/bin/bash
#请根据实际情况修改，我偷个懒····==
#by dr
host=127.0.0.1
user=root
passwd=123qqq...A
mysqladmin -h ${host} -u  ${user} -p${passwd}  ping &> /dev/null
if [ $? -eq 0 ];then
	 echo "MySQL is up"
else
	 echo "MySQL is down"
fi
