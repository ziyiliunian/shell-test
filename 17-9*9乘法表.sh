#!/bin/bash
#9*9乘法
for i in {1..9}
	do
		for j in `seq $i`
			do
				num=$[i*j]
				echo -n "$i*$j=$num  "
			done
		echo
	done
