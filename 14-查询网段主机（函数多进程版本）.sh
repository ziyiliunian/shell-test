#!/bin/bash
#&将进程转为后台，实现并行处理。问怎么解决函数结束
ipping(){

	ping -c 3 -i 0.2 -w 1 $1  > /dev/null
	if [ $? -eq 0 ];then
		 echo "$1通了"
	else
		 echo "$1不通"
	fi

}


#for i in {80..88}
#	do
#		ipping 192.168.4.$i  &
#	done
i=80
while [ $i -le 88 ]
	do
		ipping 192.168.4.$i &
		let i++
	done
