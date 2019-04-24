#!/bin/bash
#"\033[46m \033[0m" => 蓝色
#"\033[47m \033[0m" => 灰色
#规律行值加列值为偶数，打印蓝色；为奇数，打印灰色
#by dr
for i in `seq 8`
  do
	for j in `seq 8`
	  do
		sum=$[i+j]
		if [ $[sum%2] -eq 0 ];then
			echo -ne "\033[46m \033[0m"
		else
			echo -ne "\033[47m \033[0m"
		fi
	  done
	echo
  done
