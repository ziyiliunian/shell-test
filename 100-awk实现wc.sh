#!/bin/bash
#NR为awk内置函数显示行数
awk '{chars+=length($0)+1;words+=NF} END{print NR,words,chars}'  $1

