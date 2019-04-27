#!/bin/bash
#stop restart start
#by dr
program=/usr/local/nginx/sbin/nginx
pid=/usr/local/nginx/logs/nginx.pid
start(){
if [ -f $pid ];then
	 echo "nginx服务已经处于开启状态"
else 
	 $program
fi
}
stop(){
	 if [ ! -f $pid ];then
	 echo "nignx服务已经关闭"
else 
	 $program -s stop
	 echo "关闭服务ok"
fi
}
status(){
if [ -f $pid ];then
	 echo "服务正在运行"
else
	 echo "服务已经关闭"
fi
}

case $1 in 
start)
	start;;
stop)
	stop;;
restart)
	stop
	sleep 1
	start
	echo "重启成功";;
status)
	status;;
*)
	echo "输入语法错误"
esac
