
FROM mono:6.12

# cron
# https://forums.docker.com/t/running-cronjob-in-debian-jessie-container/17527/4
RUN apt update &&\
    apt install -y cron


USER root
# composeでVolumeとCMDを渡す