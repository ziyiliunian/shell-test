#!/bin/bash
#发送、接收流量
#by dr
while :
  do
	echo
	echo '本地eth0流量信息如下：'
	echo '接收流量包'
	ifconfig eth0 | awk '/RX packets/{printf $5}'
	echo
	echo '发送流量包'
	ifconfig eth0 | awk '/TX packets/{printf $5}'
	echo 
	sleep 1
done
