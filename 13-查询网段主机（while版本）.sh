#!/bin/bash
#while解决循环
i=80
while [ $i -le 88 ]
	do
		ping -c 3 -i 0.2 -w 1 192.168.4.$i	> /dev/null
		if [ $? -eq 0 ];then
			echo "192.168.4.$i通了"
		else
			echo "192.168.4.$i不通"
		fi
		let i++
	done 
