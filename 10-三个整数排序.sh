#!/bin/bash
#依次提示用户输入 3 个整数,脚本根据数字大小依次排序输出 3 个数
read -p "请输入第一个整数" num1
read -p "请输入第二个整数" num2
read -p "请输入第三个整数" num3
tmp=0
if [ $num1 -ge $num2 ];then
	tmp=$num1
	num1=$num2
	num2=$tmp
fi
if [ $num1 -ge $num3 ];then
	tmp=$num1
	num1=$num3
	num3=$tmp
fi
if [ $num2 -ge $num3 ];then
	tmp=$num2
	num2=$num3
	num3=$tmp
fi

echo "$num1	$num2	$num3"	
