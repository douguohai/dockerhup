FROM registry.cn-beijing.aliyuncs.com/douguohai/centos:latest

MAINTAINER douguohai <douguohai@gmail.com>

# 设置时间为东八区、阿里软件源
RUN  yum -y update && yum -y install wget \
    && mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup  \
    && wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo && yum clean all \
    && alias cp='cp' &&  cp  /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

# 设置工作目录
WORKDIR /root

CMD ["/bin/bash"]
