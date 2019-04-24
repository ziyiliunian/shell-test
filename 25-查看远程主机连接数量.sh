#!/bin/bash
#shh/http/ftp
#by dr

netstat -atn | awk '{print $5}' | sort -nr | uniq -c
