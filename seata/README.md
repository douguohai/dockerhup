- 创建数据库，执行sql脚本
- 编辑file.conf配置文件，修改数据库配置
- 编辑registry.conf文件，修改nacos等配置信息
- 构建image
```
docker build -t seata-serve:v1 .
```
- 执行脚本
```
docker run -itd --name=seata-serve -p 8091:8091 seata-serve:v1
```

