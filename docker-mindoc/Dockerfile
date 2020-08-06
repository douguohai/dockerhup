FROM registry.cn-beijing.aliyuncs.com/douguohai/ubuntu:v1

MAINTAINER douguohai <douguohai@gmail.com>

WORKDIR /root

ENV MINDOC_DB_ADAPTER=mysql
ENV MINDOC_DB_HOST=39.108.181.13
ENV MINDOC_DB_DATABASE=mindoc
ENV MINDOC_DB_USERNAME=root
ENV MINDOC_DB_PASSWORD=woshidoudou
ENV MINDOC_ENABLE_EXPORT=true

# 下载并安装 jre1.8
RUN apt-get update  && apt-get install -y  unzip wget calibre && cd /root && wget https://code.aliyun.com/douguohai/sourcepack/raw/6414d2419c9f7c01648eccafa19de265090162fd/mindoc_linux_amd64.zip &&  unzip -o /root/mindoc_linux_amd64.zip &&  chmod +x /root/mindoc_linux_amd64 \
&& rm -rf /root/mindoc_linux_amd64.zip && /root/mindoc_linux_amd64 install && rm -rf /var/lib/apt/lists/* && apt-get autoclean

ADD conf/app.conf /root/conf/app.conf

EXPOSE 8181

CMD ["/root/mindoc_linux_amd64"]
