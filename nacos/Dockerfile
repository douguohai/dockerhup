FROM registry.cn-beijing.aliyuncs.com/douguohai/jre1.8:v2
WORKDIR /root
RUN  wget https://code.aliyun.com/douguohai/sourcepack/raw/7c3486283b5e7e7dc32e286a3b4a048fecae7c0c/nacos-server-2.0.0-ALPHA.1.tar.gz \
  && tar -xvf /root/*.gz && rm -rf *.tar.gz
COPY  *.properties /root/nacos/conf/
COPY  startup.sh /root/nacos/bin/
ENTRYPOINT ["bash","/root/nacos/bin/startup.sh","-m","standalone"]
EXPOSE 8848
