FROM registry.cn-beijing.aliyuncs.com/douguohai/hadoop-distributed-base:v1

MAINTAINER douguohai <douguohai@gmail.com>

COPY ./etc/hadoop/masters /usr/local/hadoop-2.9.2/etc/hadoop/masters
COPY ./etc/hadoop/slaves /usr/local/hadoop-2.9.2/etc/hadoop/slaves

COPY ./init_master.sh /root/init_master.sh

RUN  chmod +x /root/init_master.sh

ENTRYPOINT ["sh", "/root/init_master.sh"]

# 跑测试代码
CMD ["ping", "127.0.0.1"]
