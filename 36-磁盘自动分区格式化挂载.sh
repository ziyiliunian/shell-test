#!/bin/bash
#照抄=.= 感觉怪怪的，运行不成功·······
#by dr
fdisk /dev/vdb << EOF
n
p
1

wq
EOF
mkfs.xfs /dev/vdb1

if [ -e /data ];then
	 exit
fi

mkdir /data


echo '/dev/vdb1 /data xfs defaults 1 2' >> /etc/fatab
mount -a
