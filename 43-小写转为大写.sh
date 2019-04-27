#!/bin/bash
#也可以用 ASCII码？
#by dr
if [ $# -eq 0 ];then
	 echo "请输入文件名"
else
	 tr "[a-z]" "[A-Z]" < $1
fi


#i=97  echo $i | awk '{printf("%c", $1)}'
#printf "%d" "'a"
