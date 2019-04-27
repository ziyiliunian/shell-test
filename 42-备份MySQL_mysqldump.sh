#!/bin/bash
#请根据实际情况修改，我偷个懒····==
#by dr
host=127.0.0.1
user=root
passwd=123qqq...A
dbname=mysql
#date_name=${date  +%Y%m%d}   ====> 不能这样写！！！！！不知道为啥？？？
date_name="`date +%Y%m%d`"
[ ! -d /mysqlbackup ] && mkdir /mysqlbackup
mysqldump -u"$user" -p"$passwd" "$dbname" > /mysqlbackup/${dbname}_${date_name}.sql
