#!/bin/bash 
#==,照抄··2333
#by dr
if [ $# -eq 0 ];then 
  echo "你需要制定一个软件包名称作为脚本参数" 
  echo "用法:$0 软件包名称 ..." 
fi 
#$@提取所有的位置变量的值,相当于$* 
#for package in "$@" 
#do 
#  if rpm ‐q ${package} &>/dev/null ;then
#	echo -ne ${package} "\033[32m已经安装\033[0m" 
#  else 
#	echo ‐ne "${package}\033[34m 未安装\033[0m" 
#  fi 
#done


#上面会出错，我也很懵逼····
for package in "$*" 
do 
   rpm ‐q ${package} &>/dev/null 
if [ $? -eq 0 ];then
   echo -e "${package}\e[32m已经安装\e[0m" 
  else 
   echo ‐e "${package}\e[34m 未安装\e[0m" 
  fi 
done
#还是不行········
