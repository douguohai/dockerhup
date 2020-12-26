FROM registry.cn-beijing.aliyuncs.com/douguohai/jre1.8:v2
WORKDIR /root
RUN wget https://code.aliyun.com/douguohai/sourcepack/raw/ad4629629934bebc08e1887d3de893d979ae8c2f/seata/seata-server-1.4.0.tar.gz && \
    tar -xvf /root/seata-server-1.4.0.tar.gz && rm -rf *.tar.gz
COPY  *.conf /root/seata/conf/
ENTRYPOINT ["bash","/root/seata/bin/seata-server.sh"]
EXPOSE 8091
