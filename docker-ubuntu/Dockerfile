FROM ubuntu:latest

MAINTAINER douguohai <douguohai@gmail.com>

RUN sed -i 's/archive.ubuntu.com/mirrors.163.com/g' /etc/apt/sources.list

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y language-pack-zh-hans && \
  apt-get install -y tzdata && \
  rm -rf /var/lib/apt/lists/*

RUN locale

# Set environment variables.
ENV HOME /root
ENV LANG=zh_CN.UTF-8\
    LANGUAGE=zh_CN:zh:en_US:en\
    LC_ALL=zh_CN.UTF-8\
    TZ=Asia/Shanghai\
    TERM=xterm

RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime && \
        echo $TZ > /etc/timezone && \
        dpkg-reconfigure --frontend noninteractive tzdata

# Define working directory.
WORKDIR $HOME

CMD ["bash"]
