FROM registry.cn-beijing.aliyuncs.com/douguohai/opencv-java412:v1

MAINTAINER douguohai <douguohai@gmail.com>

WORKDIR /root

# 下载并安装  tesseract-ocr
RUN apt-get update && apt-get install -y tesseract-ocr && rm -rf /var/lib/apt/lists/*

CMD ["bash"]