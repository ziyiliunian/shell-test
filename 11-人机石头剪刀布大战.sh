#!/bin/bash
# 没用数组，直接数字比较
echo "1代表石头"
echo "2代表剪刀"
echo "3代表布"
read -p "请输入数字" sjb
num=$[RANDOM%3]
case $sjb in
1 )
    if [ $num -eq 1 ];then
	 echo "平局"
    elif [ $num -eq 2 ];then
	 echo "你赢啦"
    else
	 echo "计算机赢啦"
    fi
;;
2 )
    if [ $num -eq 2 ];then
	 echo "平局"
    elif [ $num -eq 3 ];then
	 echo "你赢啦"
    else
	 echo "计算机赢啦"
    fi
;;
3 )
    if [ $num -eq 3 ];then
	 echo "平局"
    elif [ $num -eq 1 ];then
	 echo "你赢啦"
    else
	 echo "计算机赢啦"  
    fi
;;
* )
     echo "请正确输入"
esac
