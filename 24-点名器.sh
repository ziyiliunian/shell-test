#!/bin/bash
#
# by dr

#while :
#  do
#	line=`cat user.txt | wc -l`
#	num=$[RANDOM%line+1]
#	sed -n "${num}p" user.txt
#	sleep 0.2
#	clear
#  done

student_name=([1]=zl [2]=gyx [3]=dr [4]=zc [5]=xk [6]=tjj [7]=pw [8]=ltc [9]=jwm [10]=xl)
for i in ${student_name[@]}
  do
	echo $i
  done
echo '##################################'
while :
  do
	student_line=`echo ${#student_name[@]}`
	student_num=$[RANDOM%student_line+1]
	echo ${student_name[$student_num]} >> ./name.txt
	unset ${student_name[$student_num]}
	#sleep 1
	#clear
  done

