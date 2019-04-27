#!/bin/bash
#请根据实际情况修改
#by dr
#log_file=/var/log/mysql_count.log
log_file=./1111
user=root
password=123qqq...A
while :
  do
	sleep 2
	count=`mysqladmin -u ${user} -p${password} status | awk '{print $4}'`
	echo "`date  +%Y-%m-%d`" 并发连接数为：${count} >> $log_file
done
