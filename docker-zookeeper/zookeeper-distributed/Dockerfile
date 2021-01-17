FROM registry.cn-beijing.aliyuncs.com/douguohai/centos8-jdk8:v2

LABEL MAINTAINER="douguohai <douguohai@gmail.com>"

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN cd /root && wget https://code.aliyun.com/douguohai/sourcepack/raw/b4ac36b3440f2093f4a2ff4e4eba84965b40ca7a/apache-zookeeper-3.6.1-bin.tar.gz \
  &&tar -xvf /root/apache-zookeeper-3.6.1-bin.tar.gz && rm -rf /root/apache-zookeeper-3.6.1-bin.tar.gz \
  && rm -rf /root/apache-zookeeper-3.6.1-bin/docs && mkdir -p /root/zookeeper/

COPY conf /root/zookeeper/conf

EXPOSE 2181
EXPOSE 2187
EXPOSE 2887

WORKDIR /root/apache-zookeeper-3.6.1-bin

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]

CMD ["ping", "127.0.0.1"]
