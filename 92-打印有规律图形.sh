#!/bin/bash
#使用for（（））会简单许多
read -p "请输入1键进入第一幅"  a
for i in {1..9}
    do
      for j in {1..9}
        do
           if [ $j -lt $i ];then
            echo -n $i
           fi
        done
    echo  $i
done

read -p "请输入2键进入下一幅"  b


for i in {1..5}
    do
      for j in {1..5}
       do
           if [ $j -le $i ];then
            echo -n ' |'
          fi
      done
    echo '_'
done
 

read -p "请输入3键进入最后一幅"  c


for i in {1..5}
    do
      for j in {1..5}
       do
           if [ $j -le $i ];then
            echo -n ' *'
          fi
      done
    echo ' '
done
for i in {5..1}
    do
      for j in {1..5}
       do
           if [ $j -le $i ];then
            echo -n ' *'
          fi
      done
    echo ' '
done


