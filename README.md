# 转测试 

# [Docker_Buildx_DDTV](https://hub.docker.com/r/zzcabc/ddtv) <-点击跳转DockerHub


# 使用方式
```sh
docker run -d \
    --name ddtv \
    -p 本机端口:11419 \
    -v 本机路径:/DDTV/RoomListConfig.json \
    -v 本机路径:/DDTV/BiliUser.ini \
    zzcabc/ddtv
```

## 对应路径说明

