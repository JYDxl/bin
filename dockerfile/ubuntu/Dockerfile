FROM ubuntu:focal-20200729

RUN  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update

ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
