From registry.cn-beijing.aliyuncs.com/douguohai/centos8:v2

MAINTAINER douguohai <douguohai@gmail.com>

WORKDIR /root

ENV JAVA_HOME=/usr/local/jdk1.8.0_221

ENV PATH=${PATH}:${JAVA_HOME}/bin:

# 下载jdk源码并设置环境变量
RUN wget https://code.aliyun.com/douguohai/sourcepack/raw/6414d2419c9f7c01648eccafa19de265090162fd/jdk-8u221-linux-x64.tar.gz  \
&& tar -xvf /root/jdk-8u221-linux-x64.tar.gz -C /usr/local/ && rm -rf /root/jdk-8u221-linux-x64.tar.gz \
&& echo "export JAVA_HOME=${JAVA_HOME}" >>/etc/profile && echo "export PATH=${PATH}:${JAVA_HOME}/bin:">>/etc/profile

CMD ['bash']
