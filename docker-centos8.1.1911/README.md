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

4、设置虚拟docker网络，更改本季网卡为静态ip
```$shell script

```
5、 集成java环境，设置环境变量


6、
```shell script
 yum clean all
```
