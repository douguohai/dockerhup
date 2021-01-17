FROM registry.cn-beijing.aliyuncs.com/douguohai/hadoop-false-distributed:v1

LABEL maintainer =“douguohai <douguohai@gmail.com>”

COPY entrypoint.sh /usr/local/bin/entrypoint_bbase.sh

RUN cd /root && wget https://code.aliyun.com/douguohai/sourcepack/raw/3d2540187d7ab6518f79fc48e1f3f59ce39882d0/hbase-2.2.6-bin.tar.gz \
  &&tar -xvf /root/hbase-2.2.6-bin.tar.gz && rm -rf /root/hbase-2.2.6-bin.tar.gz

EXPOSE 16010

WORKDIR /root/hbase-2.2.6

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint_bbase.sh"]

CMD ["bash"]
