FROM registry.cn-beijing.aliyuncs.com/douguohai/centos8-jdk8:v2

MAINTAINER douguohai <douguohai@gmail.com>

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN cd /root && wget https://code.aliyun.com/douguohai/sourcepack/raw/b4ac36b3440f2093f4a2ff4e4eba84965b40ca7a/apache-zookeeper-3.6.1-bin.tar.gz \
  &&tar -xvf /root/apache-zookeeper-3.6.1-bin.tar.gz && rm -rf /root/apache-zookeeper-3.6.1-bin.tar.gz \
  && rm -rf /root/apache-zookeeper-3.6.1-bin/docs

COPY ./conf  /root/apache-zookeeper-3.6.1-bin/conf

EXPOSE 2181

WORKDIR /root/apache-zookeeper-3.6.1-bin

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]

CMD ["bash"]
