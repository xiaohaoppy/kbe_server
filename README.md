kbengine运行镜像

#用途

 一台服务器部署多组kbe服务  
  
 可以使用该镜像分布式部署kbe
 
 #用法

 
 ```
 git clone https://github.com/xiaohaoppy/kbe_server.git
 cd kbe_server
 
 ```
 使用编译镜像编译kbehttps://github.com/xiaohaoppy/KBE_BUILD_EVN   
 
 ```
 docker run xiaohaoppy/KBE_BUILD_EVN
 
 ```
 
 
 等待编译完成 拷贝出编译的文件
 
 ```
 docker cp <编译镜像容器的ID>：/kbengine/kbe/bin /kbengine/kbe/bin
 
 ```
 
 ```
 assets\scripts/下放入自己的额脚本逻辑
 
 assets\res\server/kbengine.xml 修改配置文件 该容器里没有数据库需要自己配置数据库，并且配置对外ip
 ```
 
 ##build镜像
 
 ```
 docker build xiaohaoppy/kbe-server .
 ```
 
 ##启动镜像
 
 -u 为设置容器的UID -p 映射端口  -i -t 启动个伪终端
 
 ```
 docker run -t -i -p 20013:20013 -P 20015:20015 -P 20016:20016 -p 20017:20017 -u 1000 xiaohaoppy/kbe-server /bin/bash
 
 ```
 在容器里执行
 ```
 cd /kbengine/assets
 
 sh start_server.sh
 ```
 
启动kbe完成