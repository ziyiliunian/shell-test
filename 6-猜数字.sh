#!/bin/bash
#RANDOM系统自带变量0-32767
#取余算法抽取随机数
 num=$[RANDOM%100+1]
 echo 已随机生成数字，猜吧
while :
do
    read -p "请输入1-100之间的整数" a
    if [ $a -eq $num ];then
       echo 猜对了
       exit
    elif [ $a -lt $num ];then
       echo 猜小了
    else
       echo 猜大了
    fi
done
