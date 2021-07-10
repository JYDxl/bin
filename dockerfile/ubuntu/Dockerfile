FROM ubuntu:focal-20210609

RUN  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update \
  && apt-get upgrade -y \
#  时区
  && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && apt-get install tzdata -y \
  && echo 'Asia/Shanghai' > /etc/timezone \
#  清理
  && apt-get clean

ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai
