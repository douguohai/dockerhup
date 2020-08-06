1、安装wget
```shell script
yum install wget vim
```
2 切换国内源
```shell script
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
```
3、配置相关时区
```shell script
 alias cp='cp' # 防止系统默认-i参数
 cp  /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
```

4. 安装sshd和ssh服务，配置自启动
```
&& ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key > /dev/null 2>&1 \
&& ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key > /dev/null 2>&1 \
&& ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key > /dev/null 2>&1\
&& mkdir ~/.ssh && ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa  && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys\
&& sed -i "s/#PermitRootLogin no/PermitRootLogin yes/g" /etc/ssh/sshd_config &&  sed -i "s/PermitRootLogin without-password/PermitRootLogin yes/g" /etc/ssh/sshd_config \
&& echo "StrictHostKeyChecking no">>/etc/ssh/ssh_config && echo "UserKnownHostsFile /dev/null">>/etc/ssh/ssh_config \
&& chmod 0600 ~/.ssh/authorized_keys\
```

5、清理相关配置缓存
```shell script
 yum clean all
```
