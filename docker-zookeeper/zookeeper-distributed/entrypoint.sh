#!/usr/bin/env bash

echo "========================初始化zookeeper data 目录========================"

mkdir -p /root/zookeeper/data/data${DATANODE}

echo "========================修改配置文件中的 data 目录 开始 ========================"
sed -i 's/DATANODE/data'$DATANODE'/g'  /root/zookeeper/conf/zoo.cfg
echo "========================修改配置文件中的 data 目录 结束========================"

echo "========================初始化 myid 目录========================"
echo ${DATANODE}  > /root/zookeeper/data/data${DATANODE}/myid

echo "========================开启 zookeeper 分布式服务========================"
/root/apache-zookeeper-3.6.1-bin/bin/zkServer.sh  start  /root/zookeeper/conf/zoo.cfg
echo "========================结束 zookeeper 分布式服务========================"

exec $@
