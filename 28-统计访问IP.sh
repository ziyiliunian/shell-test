#!/bin/bash
#时间段16:30到17:30
#by dr
awk -F"[ /:]" '$7":"$8>="16:30" && $7":"$8<="17:30"{printf $1","}' /var/log/httpd/access_log | sed 's/,/\n/g' | sort -nr |  uniq -c | sort -nk 1
