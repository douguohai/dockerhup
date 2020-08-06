FROM registry.cn-beijing.aliyuncs.com/douguohai/ubuntu:v1

MAINTAINER douguohai <douguohai@gmail.com>

# 下载并安装 jre1.8
RUN apt-get update && apt-get install -y  wget && cd /opt  &&wget https://dev.tencent.com/u/douguohai/p/download/git/raw/master/jre-8u221-linux-x64.tar.gz&& tar -xvf jre-8u221-linux-x64.tar.gz && rm -rf *.gz && rm -rf /var/lib/apt/lists/* && apt-get autoclean

# 设置环境变量
ENV JAVA_HOME /opt/jre1.8.0_221

ENV PATH $PATH:${JAVA_HOME}/bin

ENV CLASSPATH .:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar

CMD ["bash"]