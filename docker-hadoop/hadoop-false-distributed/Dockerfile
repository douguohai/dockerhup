FROM centos8-ssh-java:v1

MAINTAINER douguohai <douguohai@gmail.com>


# 下载源码包 、解压包 安装 which
# COPY hadoop-2.9.2.tar.gz /usr/local/
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENV HADOOP_HOME=/usr/local/hadoop-2.9.2
ENV PATH=${PATH}:${HADOOP_HOME}/bin:

RUN wget -P /usr/local/ https://code.aliyun.com/douguohai/sourcepack/raw/6414d2419c9f7c01648eccafa19de265090162fd/hadoop-2.9.2.tar.gz \

&&  yum clean all && yum -y update && yum -y install which  && yum clean all && cd /usr/local/ \

&&tar -xvf  hadoop-2.9.2.tar.gz && rm -rf hadoop-2.9.2.tar.gz && rm -rf /usr/local/hadoop-2.9.2/share/doc && cd hadoop-2.9.2 \

&& echo "export HADOOP_HOME=${HADOOP_HOME}" >>/etc/profile && echo "export PATH=${PATH}:${HADOOP_HOME}/bin:">>/etc/profile \

&& chmod +x /usr/local/bin/entrypoint.sh

COPY ./hadoop-2.9.2/etc/hadoop/core-site.xml /usr/local/hadoop-2.9.2/etc/hadoop/core-site.xml
COPY ./hadoop-2.9.2/etc/hadoop/hadoop-env.sh /usr/local/hadoop-2.9.2/etc/hadoop/hadoop-env.sh
COPY ./hadoop-2.9.2/etc/hadoop/hdfs-site.xml /usr/local/hadoop-2.9.2/etc/hadoop/hdfs-site.xml
COPY ./hadoop-2.9.2/etc/hadoop/mapred-site.xml /usr/local/hadoop-2.9.2/etc/hadoop/mapred-site.xml
COPY ./hadoop-2.9.2/etc/hadoop/yarn-env.sh /usr/local/hadoop-2.9.2/etc/hadoop/yarn-env.sh
COPY ./hadoop-2.9.2/etc/hadoop/yarn-site.xml /usr/local/hadoop-2.9.2/etc/hadoop/yarn-site.xml

# 工作空间
WORKDIR /usr/local/hadoop-2.9.2

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]

EXPOSE 50070
EXPOSE 8088

# 跑测试代码
CMD ["/bin/bash"]
