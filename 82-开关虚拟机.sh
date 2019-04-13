#!/bin/bash
#需要libvirt-client
case $1 in
  list)
	virsh list --all;;
  start)
	virsh start $2;;
  stop)
	virsh destroy $2;;
  enable)
	virsh autostart $2;;
  disable)
	virsh autostart --disable $1;;
  *)
	echo "Usage:$0 list"
	echo "Usage:$0 [start|stop|enable|disable]  VM_name" 
	;;
esac
