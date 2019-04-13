#!/bin/bash
#配置yum，懒得配了
#照抄，另转22题（22.sh）
yum -y remove httpd
yum -y install gcc openssl-devel pcre-devel
yum -y install mariadb mariadb-devel mariadb-server
yum -y install php php-mysql
systemctl start  mariadb
systemctl enable  mariadb
useradd nginx
cd /root
tar -xf lnmp_soft.tar.gz
tar -xf lnmp_soft/nginx-1.12.2.tar.gz
cd nginx-1.12.2
./configure --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_ssl_module --with-stream --with-http_stub_status_module
make && make install
ln -s /usr/local/nginx/sbin/nginx /sbin/
nginx
yum -y install /root/lnmp_soft/php-fpm-5.4.16-42.el7.x86_64.rpm 
systemctl start php-fpm.service 
systemctl enable php-fpm.service 

