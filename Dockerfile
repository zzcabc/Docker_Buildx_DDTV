FROM mcr.microsoft.com/dotnet/aspnet:6.0.1-alpine3.14
RUN apk add -U --no-cache tzdata ffmpeg wget unzip && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    wget -O DDTV-info https://api.github.com/repos/CHKZL/DDTV/releases/latest && \
    DDTVWEBSERVER_RELEASE=$(cat DDTV-info | awk '/tag_name/{print $5;exit}' FS='[r"]') && \
    wget https://github.com/CHKZL/DDTV/releases/latest/download/DDTV_WEB_Server_${DDTVWEBSERVER_RELEASE}.zip && \
    unzip DDTV_WEB_Server_*.zip -d DDTV_WEB_Server && \
    mv DDTV_WEB_Server/DDTV_WEB_Server/ DDTV && \
    rm -rf DDTV-info DDTV_WEB_Server_${DDTVWEBSERVER_RELEASE}.zip DDTV_WEB_Server && \
    apk del tzdata unzip && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache && \
    rm -rf /tmp/*
EXPOSE 11419
ENTRYPOINT ["dotnet", "/DDTV/DDTV_WEB_Server.dll"]