FROM debian:buster-20210208

RUN  sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update

ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
