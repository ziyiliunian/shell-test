#!/bin/bash
#仅仅是循环得出md5码···==
#by dr
read -p "请输入文件名或者目录名" file_dr
for i in $(ls $file_dr)
  do
	md5sum "$i" >> ./md5.txt
  done
echo "文件md5存为md5.txt"


