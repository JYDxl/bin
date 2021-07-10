FROM debian:buster-20210621

RUN  sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update

ENV LANG zh_CN.UTF-8
#ENV TZ Asia/Shanghai
