#!/bin/bash
#扩展名可以这样修改？
#by dr
:<<!!!!
for i in "ls *.$1"
	do
		mv $i ${i%.*}.$2
	done
!!!!
#下面是我的解法,仅供参考
read -p "请输入文件夹的绝对路径" name_f
read -p "请输入希望更改的名称" name_d
read -p "请输入希望的扩展名" name_a
j=0
for i in `ls $name_f`
  do
    mv $name_f/$i $name_f/$name_d$j.$name_a
    let j++
  done

echo -e '\033[32m success \033[0m'
