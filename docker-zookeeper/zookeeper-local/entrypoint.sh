#!/usr/bin/env bash
echo "========================开启hbase单机服务========================"
/root/apache-zookeeper-3.6.1-bin/bin/zkServer.sh  start
echo "========================结束hbase单机服务========================"

exec $@
