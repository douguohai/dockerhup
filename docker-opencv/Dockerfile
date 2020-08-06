FROM registry.cn-beijing.aliyuncs.com/douguohai/jdk1.8:v1

MAINTAINER douguohai <douguohai@gmail.com>

# WORKDIR /root

# 下载并安装 opencv
RUN apt-get update && apt-get install -y wget zip build-essential cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev ant \
&& wget https://dev.tencent.com/u/douguohai/p/download/git/raw/master/opencv-master.zip && unzip -x opencv-master.zip && rm -rf *.zip \
&& cd opencv-master && mkdir build && cd build && cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && make -j4 \
&& echo "===============  保存安装记录  =================="&& make install > /root/install-history  && echo "============== 安装完成 扫尾ing....================"\
&& rm -rf /var/lib/apt/lists/* && rm -rf /root/opencv-master

CMD ["bash"]