# 转测试 

# 如需使用 请前往[Docker-DDTV](https://github.com/moomiji/docker-ddtv/blob/master/Docker/README.md) 同样为测试项目，如有更新，最晚2天之内更新

# 本项目仅为应急使用之后可能不会更新

# [Docker_Buildx_DDTV](https://hub.docker.com/r/zzcabc/ddtv) <-点击跳转DockerHub

## 本项目是[CHKZL的DDTV项目](https://github.com/CHKZL/DDTV) Docker构建

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

# 更新方式

内置更新版本，你只需要使用 `docker restart ddtv` 即可更新

# 对应路径说明
- `-v 本地路径:RoomListConfig.json` 录制房间信息

- `-v 本地路径:DDTV_Config.ini` 非必要映射，配置文件

- `-v 本地路径:BiliUser.ini` 非必要映射，登录信息，可访问 `http://服务器ip:服务器端口/api/loginqr` 登录


# 其他人做的Docker项目

[moomiji的ddtvliverec项目](https://hub.docker.com/r/moomiji/ddtvliverec)

[uchuhimo的ddtv_live_rec项目](https://hub.docker.com/r/uchuhimo/ddtv_live_rec)

