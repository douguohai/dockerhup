From registry.cn-beijing.aliyuncs.com/douguohai/centos8-jdk8:v2

MAINTAINER douguohai <douguohai@gmail.com>

WORKDIR /root

# 下载jdk源码并设置环境变量
RUN yum -y install fontconfig \
&& wget https://code.aliyun.com/douguohai/sourcepack/raw/629254bc7bbbbaa3a89f99129a6b74a5da6c44c2/fonts/simsun.ttc  \
&& cp /root/simsun.ttc /usr/share/fonts/ && fc-cache

CMD ['bash']
