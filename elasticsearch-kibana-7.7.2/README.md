### elasticsearch 与 kibana 搭建流程

- 从dockerhup pull相关image
- 创建虚拟网络
- 创建elasticsearch 容器 开放端口 9200与9300 连接上新创建的虚拟网络
- 创建 kibana 容器 ，开放端口 5200 同时连接虚拟网络



