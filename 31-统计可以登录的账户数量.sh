#!/bin/bash
#
# by dr
grep "bash$" /etc/passwd | wc -l
awk -F: '/bash$/{x++}END{print x}' /etc/passwd
