#!/usr/bin/env bash
echo "========================开启ssh服务========================"
/sbin/sshd

echo "========================修改/etc/hosts文件========================"
echo "199.18.0.2      hadoop-master">> /etc/hosts
echo "199.18.0.3      hadoop-slave3">> /etc/hosts
echo "199.18.0.4      hadoop-slave4">> /etc/hosts
echo "199.18.0.5      hadoop-slave5">> /etc/hosts

#sh -c "while true;do echo hello docker >> /dev/null ;sleep 1;done"
exec $@
