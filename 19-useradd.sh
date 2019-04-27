#!/bin/bash
#准备姓名脚本
#by dr
for i in ` cat $1`
	do
		useradd $i
		echo 123456 | passwd --stdin $i
	done
