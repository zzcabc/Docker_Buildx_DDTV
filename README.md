# 请前往 https://hub.docker.com/r/moomiji/ddtvliverec 使用吧，本项目仅做留存，

# [Docker_Buildx_DDTV](https://hub.docker.com/r/zzcabc/ddtv) <-点击跳转DockerHub


[![GitHub release (latest by date)](https://img.shields.io/github/v/release/CHKZL/DDTV2?label=DDTV&style=flat-square)](https://github.com/CHKZL/DDTV2/releases/latest) [![Docker Image Version (latest by date)](https://img.shields.io/docker/v/zzcabc/ddtv?label=DockerHub&style=flat-square)](https://hub.docker.com/r/zzcabc/ddtv/tags?page=1&ordering=last_updated)
### ~~如果你发现上面图标版本不一致，请点击一下star，这样会触发自动构建镜像，即使你之后取消star~~


本项目使用Docker Buildx构建全平台镜像，支持linux/armv7、linux/armv8、linux/amd64框架，并使用mcr.microsoft.com/dotnet/aspnet:5.0-alpine作为底包


使用GitHub Action中国时间 **0:00** 自动拉取[CHKZL/DDTV2](https://github.com/CHKZL/DDTV2)的源码进行构建Docker镜像，**但当源码版本和Docker镜像版本一致将不会构建镜像**，由源码构建时间大概2分钟

需要提前准备RoomListConfig.json和BiliUser.ini

[点击查看RoomListConfig.json](https://github.com/zzcabc/Docker_Buildx_DDTV/blob/master/RoomListConfig.json)


# 使用方式
```sh
docker run -d \
    --name ddtv \
    -p 本机端口:11419 \
    -v 本机路径:/DDTVLiveRec/tmp \
    -v 本机路径:/DDTVLiveRec/BiliUser.ini \
    -v 本机路径:/DDTVLiveRec/RoomListConfig.json \
    zzcabc/ddtv:latest
```

## 对应路径说明

此说明对应Docker容器内

/DDTVLiveRec/tmp                  DDTV的视频保存路径

/DDTVLiveRec/BiliUser.ini         DDTV的登录信息

/DDTVLiveRec/RoomListConfig.json  DDTV的监控房间


# 其他人做的docker项目
[uchuhimo的ddtv_live_rec项目](https://hub.docker.com/r/uchuhimo/ddtv_live_rec)
