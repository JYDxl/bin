FROM ubuntu:focal-20210609

RUN  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update

ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai
