#!/bin/bash
#防止单个日志文件过大
#by dr
log_path="/usr/local/nginx/logs/"
#mv ${log_path}access.log ${log_path}access_$(date -d "yesterday" +"%Y%n%d").log
#丁丁错了？
mv ${log_path}access.log ${log_path}access_$(date -d "1 day ago" +"%Y-%m-%d").log
kill -USR1 `cat /usr/local/nginx/logs/nginx.pid`
#写入计划任务
#0 1 * * *  ./xxxx
