#!/bin/bash
#00‐12 点为早晨,12‐18 点为下午,18‐24 点为晚上 
time=`date +%H`
if [ $time -le 12 ] ;then
	 echo "早上好"
elif [ $time -gt 12 ] && [ $time -le 18 ] ;then
	 echo "下午好"
else 
	 echo "晚上好"
fi
echo "当前时间是`date +"%Y-%m-%d %H:%M:%S"`"

