FROM registry.cn-beijing.aliyuncs.com/douguohai/centos8-jdk8:v2

MAINTAINER douguohai <douguohai@gmail.com>


# 下载源码包 、解压包 安装 which
COPY ../hadoop-2.9.2.tar.gz /usr/local/

ENV HADOOP_HOME=/usr/local/hadoop-2.9.2
ENV PATH=${PATH}:${HADOOP_HOME}/bin:

RUN yum clean all && yum -y update && yum -y install which && yum clean all && cd /usr/local/ &&tar -xvf  hadoop-2.9.2.tar.gz && rm -rf hadoop-2.9.2.tar.gz && cd hadoop-2.9.2 \
&& mkdir input && cp etc/hadoop/*.xml input/ && bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.2.jar grep input output 'dfs[a-z.]+' && cat output/* \
&& echo "export HADOOP_HOME=${HADOOP_HOME}" >>/etc/profile && echo "export PATH=${PATH}:${HADOOP_HOME}/bin:">>/etc/profile

# 工作空间
WORKDIR /usr/local/hadoop-2.9.2

# 跑测试代码
CMD ["bash"]

