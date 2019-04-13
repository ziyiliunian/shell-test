#!/bin/bash
#将用户信息读入数组，然后输出
i=0
while :
	do
		read -p "请输入账户名,输入over结束：" key
		if [ $key == "over" ];then
			break
		else
			name[$i]=$key
			let i++
		fi
	done

echo "总账户数量：${#name[*]}"
echo "${name[@]}"
