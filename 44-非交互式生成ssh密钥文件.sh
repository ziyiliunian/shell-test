#!/bin/bash
#-t 指定 SSH 密钥的算法为 RSA 算法;‐N 设置密钥的密码为空;‐f 指定生成的密钥文件存放在哪里
rm -rf ~/.ssh/{know_hosts,id_rsa*}
ssh-keygen -t RSA -N '' -f ~/.ssh/id_rsa
