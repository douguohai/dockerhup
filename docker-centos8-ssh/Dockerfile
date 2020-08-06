FROM registry.cn-beijing.aliyuncs.com/douguohai/centos:latest

MAINTAINER douguohai <douguohai@gmail.com>

COPY entrypoint.sh /usr/local/bin/

COPY startup.sh /root/

# 设置时间为东八区、阿里软件源,安装ssh服务，允许root登录
RUN  yum -y update && yum -y install wget which openssh-server openssh-clients \
    && mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup  \
    && wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo && yum clean all \
    &&  cp  /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime \
    && ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key > /dev/null 2>&1 \
    && ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key > /dev/null 2>&1 \
    && ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key > /dev/null 2>&1\
    && mkdir ~/.ssh && ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa  && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys\
    && sed -i "s/#PermitRootLogin no/PermitRootLogin yes/g" /etc/ssh/sshd_config &&  sed -i "s/PermitRootLogin without-password/PermitRootLogin yes/g" /etc/ssh/sshd_config \
    && echo "StrictHostKeyChecking no">>/etc/ssh/ssh_config && echo "UserKnownHostsFile /dev/null">>/etc/ssh/ssh_config \
    && chmod 0600 ~/.ssh/authorized_keys\
    && echo "alias ll='ls -lh' ">>/root/.bashrc && echo "alias cp='cp' ">>/root/.bashrc\
    && chmod +x /usr/local/bin/entrypoint.sh  /root/startup.sh


# 设置工作目录
WORKDIR /root

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]

CMD /root/startup.sh
