FROM mcr.microsoft.com/dotnet/aspnet:6.0.1-alpine3.14
RUN apk add -U --no-cache tzdata ffmpeg wget unzip && \
    apk add libgdiplus --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    wget -O DDTV-info https://api.github.com/repos/CHKZL/DDTV/releases/latest && \
    DDTVWEBSERVER_RELEASE=$(cat DDTV-info | awk '/tag_name/{print $5;exit}' FS='[r"]') && \
    wget https://github.com/CHKZL/DDTV/releases/latest/download/DDTV_WEB_Server.zip && \
    unzip DDTV_WEB_Server.zip -d DDTV_WEB_Server && \
    mv DDTV_WEB_Server/DDTV_WEB_Server/ DDTV && \
    cd DDTV && \
    wget https://raw.githubusercontent.com/zzcabc/Docker_Buildx_DDTV/master/start.sh && \
    chmod +x start.sh && \
    rm -rf DDTV-info DDTV_WEB_Server.zip DDTV_WEB_Server && \
    apk del tzdata unzip && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache && \
    rm -rf /tmp/*
EXPOSE 11419
WORKDIR /DDTV
ENTRYPOINT ["./start.sh"]