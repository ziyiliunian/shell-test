#!/bin/bash
#for循环版本
for i in {80..88}
	do
		ping -c 3 -i 0.2 -w 1  192.168.4.$i > /dev/null
		if [ $? -eq 0 ];then
			 echo "192.168.4.$i通了"
		else
			 echo "192.168.4.$i不通"
		fi
	done
