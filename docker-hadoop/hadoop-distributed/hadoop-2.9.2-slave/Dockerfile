FROM registry.cn-beijing.aliyuncs.com/douguohai/hadoop-distributed-base:v1

MAINTAINER douguohai <douguohai@gmail.com>

COPY masters /usr/local/hadoop-2.9.2/etc/hadoop/masters

COPY ./init_slave.sh /root/init_slave.sh

RUN  chmod +x /root/init_slave.sh

ENTRYPOINT ["sh", "/root/init_slave.sh"]

# 跑测试代码
CMD ["ping", "127.0.0.1"]
