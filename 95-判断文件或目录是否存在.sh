#!/bin/bash
#
if [ $# -eq 0 ];then
	 echo "未输入任何参数，请按格式输入参数"
	 echo "目录名   文件名"
	 exit 2
fi

if [ -d $1 ];then
	echo "$1目录存在"
    ls -ld $1
 else
    echo "$1该目录不存在"
 fi

if [ -f $2 ];then
	echo "$2文件存在"
	ls -l $2
else
	echo "$2该文件不存在"
fi
