#!/bin/bash
#略作修改
#by dr
for i in $1
	do 
		expect << EOF
		
spawn ssh 192.168.1.$i
expect "password:" {send "a\r"}
expect "]#" {send "yum -y install httpd\r"}
expect "]#" {send "exit\r"}
EOF
	done
