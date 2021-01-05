#!/usr/bin/env bash

echo "========================初始化zookeeper data 目录========================"
mkdir -p /root/zookeeper/data/data1 && mkdir /root/zookeeper/data/data2 \
  && mkdir /root/zookeeper/data/data3

echo "========================初始化 myid 目录========================"
echo "1" > /root/zookeeper/data/data1/myid
echo "2" > /root/zookeeper/data/data2/myid
echo "3" > /root/zookeeper/data/data3/myid

echo "========================开启hbase 伪分布式服务========================"
/root/apache-zookeeper-3.6.1-bin/bin/zkServer.sh  start  /root/zookeeper/conf_1/zoo.cfg
/root/apache-zookeeper-3.6.1-bin/bin/zkServer.sh  start  /root/zookeeper/conf_2/zoo.cfg
/root/apache-zookeeper-3.6.1-bin/bin/zkServer.sh  start  /root/zookeeper/conf_3/zoo.cfg
echo "========================结束hbase 伪分布式服务========================"

exec $@
