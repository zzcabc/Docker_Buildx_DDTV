FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine
WORKDIR /DDTVLiveRec
RUN apk add -U --no-cache tzdata ffmpeg wget unzip && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    wget -O DDTVLiveRec-info https://api.github.com/repos/CHKZL/DDTV2/releases/latest && \
    DDTVLiveRec_RELEASE=$(cat DDTVLiveRec-info | awk '/tag_name/{print $5;exit}' FS='[r"]') && \
    wget https://github.com/CHKZL/DDTV2/releases/latest/download/DDTVLiveRec-${DDTVLiveRec_RELEASE}.zip && \
    unzip DDTVLiveRec-*.zip -d DDTVLiveRec-Release && \
    rm -f DDTVLiveRec-Release/DDTV*/DDTV*/*.exe DDTVLiveRec-Release/DDTV*/DDTV*/*.txt && \
    mv DDTVLiveRec-Release/DDTV*/DDTV*/* /DDTVLiveRec && \
    rm -rf DDTVLiveRec-* && \
    apk del tzdata git wget unzip && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache && \
    rm -rf /tmp/*
EXPOSE 11419
VOLUME /DDTVLiveRec/tmp /DDTVLiveRec/BiliUser.ini /DDTVLiveRec/RoomListConfig.json
ENTRYPOINT ["dotnet", "DDTVLiveRec.dll"]