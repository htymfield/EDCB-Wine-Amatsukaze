
FROM alpine:3.4

# タイムゾーンを日本に設定
# https://zenn.dev/saiki_toshiki/articles/8ffd31497b8098
# https://sebenkyo.com/2021/08/12/post-2203/
RUN apk --update-cache add tzdata bash && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata

USER root
# composeでVolumeとCMDを渡す