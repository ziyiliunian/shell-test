#!/bin/bash
#
if [ $# -eq 0 ];then
	 echo "请输入文件名"
else
	 tr "[a-z]" "[A-Z]" < $1
fi
