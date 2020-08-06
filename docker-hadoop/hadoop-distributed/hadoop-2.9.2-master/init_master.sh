#!/usr/bin/env bash
echo "========================开启ssh服务========================"
/sbin/sshd

echo "========================修改/etc/hosts文件========================"
echo "199.18.0.2      hadoop-master">> /etc/hosts
echo "199.18.0.3      hadoop-slave3">> /etc/hosts
echo "199.18.0.4      hadoop-slave4">> /etc/hosts
echo "199.18.0.5      hadoop-slave5">> /etc/hosts



echo "========================开始格式化namenode========================"
bin/hdfs namenode -format
echo "========================结束格式化namenode========================"

echo "========================开始启动hadoop集群========================"
sbin/start-all.sh

echo "========================开始测试分布式hadoop========================"

# 创建 HDFS 目录来执行 MapReduce 的 job
bin/hdfs dfs -mkdir /user
bin/hdfs dfs -mkdir /user/root

# 将输入文件拷贝到分布式文件系统
bin/hdfs dfs -put etc/hadoop input

#运行发行版提供的示例程序
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.2.jar grep input output 'dfs[a-z.]+'

#查看输出文件
bin/hdfs dfs -cat output/*

echo "========================结束测试分布式hadoop========================"

exec $@
