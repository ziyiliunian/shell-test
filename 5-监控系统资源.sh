/bin/bash
#内存 磁盘
#by dr
#disk_size=`df / | awk '/\//{print $5 }`
#free_size=`free -h | awk '/Mem/{print $4}'`
disk_size=`df / | awk '/\//{print $4 }`
mem_size=`free | awk '/Mem/{print $4 }'`
if  [ $men_size -le 512000 -a $disk_size 1024000 ]; then
	mail -s Warning << EOF
sos,晶体矿不足，你需要更多地高能瓦斯·····
EOF
echo $disk_size $mem_size
fi
done

echo $disk_size
echo $mem_size
