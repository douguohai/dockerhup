FROM registry.cn-beijing.aliyuncs.com/douguohai/centos8-jdk8:v2

MAINTAINER douguohai <douguohai@gmail.com>

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN cd /root && wget https://code.aliyun.com/douguohai/sourcepack/raw/b4ac36b3440f2093f4a2ff4e4eba84965b40ca7a/apache-zookeeper-3.6.1-bin.tar.gz \
  &&tar -xvf /root/apache-zookeeper-3.6.1-bin.tar.gz && rm -rf /root/apache-zookeeper-3.6.1-bin.tar.gz \
  && rm -rf /root/apache-zookeeper-3.6.1-bin/docs && mkdir -p /root/zookeeper/

COPY conf_1 /root/zookeeper/conf_1
COPY conf_2 /root/zookeeper/conf_2
COPY conf_3 /root/zookeeper/conf_3

EXPOSE 2181
EXPOSE 2182
EXPOSE 2183

WORKDIR /root/apache-zookeeper-3.6.1-bin

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]

CMD ["bash"]
