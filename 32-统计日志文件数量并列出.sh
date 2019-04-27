#!/bin/bash
#/var/log/ 内为日志文件存储地
#by dr
cd /var/log
sum=0
for i in `ls -r *`
  do
	if [ -f $i ];then
		 let sum++
		 echo "文件名：$i"
	fi
  done
echo "总文件数量为：$sum"
