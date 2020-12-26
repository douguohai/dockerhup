- 创建对应数据库，执行sql脚本
- 编辑 application.properties 文件
修改 数据库链接、账户、密码 
- 执行image 构建脚本
```
docker build -t nacos-server:v1 .
```
- 执行容器
```
docker run -itd --name=nacos-server -p 8848:8848 nacos-server:v2
```
