#!/bin/bash
#请提前下载好varnish-*.tar.gz
#可参考22-lnmp等相关.sh
#by dr
yum -y install gcc readline-devel pcre-devel
useradd -s /sbin/nologin varnish
tar -xf varnish-3.0.6.tar.gz
cd varnish-3.0.6

./configure --prefix=/usr/local/varnish
make && make install

#在源码目录下将配置文件拷至linux中
cp redhat/varnish.initrc /etc/init.d/varnish
cp redhat/varnish.sysconfig /etc/init.d/varnish
cp redhat/varnish_reload_vcl /usr/bin

ln -s /usr/local/varnish/sbin/varnishd /usr/sbin/
ln -s /usr/local/varnish/bin/* /usr/bin

mkdir  /etc/varnish
cp /usr/local/varnish/etc/varnish/default.vcl /etc/varnish

uuidgen > /etc/varnish/secret
