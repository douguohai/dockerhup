#!/usr/bin/env bash

echo "======================== 初始化data目录========================"

mkdir -p /root/hbase/tem

echo "========================修改配置文件中的 JAVA_HOME  开始 ========================"
sed -i 's?# export JAVA_HOME=/usr/java/jdk1.8.0?export JAVA_HOME=${JAVA_HOME}?g' /root/hbase-2.2.6/conf/hbase-env.sh
echo "========================修改配置文件中的 JAVA_HOME 结束========================"

echo "========================修改hbase-site中的 tem  开始 ========================"
sed -i 's?<value>./tmp</value>?<value>/root/hbase/tem</value>?g' /root/hbase-2.2.6/conf/hbase-site.xml
echo "========================修改hbase-site中的 tem 结束========================"

echo "========================开启 hbase 分布式服务========================"
/root/hbase-2.2.6/bin/start-hbase.sh
echo "========================结束 hbase 分布式服务========================"

export HABSE_HOME=/root/hbase-2.2.6

exec $@
