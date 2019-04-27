#!/bin/bash
#
#yum -y install memcached
wget http://www.memcached.org/files/memcached-1.5.1.tar.gz
yum -y install gcc
tar -xf memcached-1.5.1.tar.gz
./configure
make
make install
