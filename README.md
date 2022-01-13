# 转测试 

# [Docker_Buildx_DDTV](https://hub.docker.com/r/zzcabc/ddtv) <-点击跳转DockerHub


# 使用方式
## DockerHub仓库
```sh
docker run -d \
    --name ddtv \
    -p 本地端口:11419 \
    -v 本地路径:RoomListConfig.json	\
    -v 本地路径:DDTV_Config.ini \
    -v 本地路径:BiliUser.ini \
    zzcabc/ddtv
```

## 阿里镜像仓库
```sh
docker run -d \
    --name ddtv \
    -p 本地端口:11419 \
    -v 本地路径:RoomListConfig.json	\
    -v 本地路径:DDTV_Config.ini \
    -v 本地路径:BiliUser.ini \
    registry.cn-hangzhou.aliyuncs.com/zzcabc/ddtv
```


## 对应路径说明
`-v 本地路径:RoomListConfig.json` 录制房间信息

`-v 本地路径:DDTV_Config.ini` 非必要映射，配置文件

`-v 本地路径:BiliUser.ini` 非必要映射，登录信息，可访问 `http://服务器ip:服务器端口/api/loginqr` 登录
