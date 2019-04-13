#!/bin/bash
#编写计划任务：tar备份
echo "51 8 * * * tar -cPzf //root/桌面/dr-shell100练习稿/log-$(date +%Y%m%d).tar.gz /var/log" > /var/spool/cron/root


