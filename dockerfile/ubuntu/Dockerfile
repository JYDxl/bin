FROM ubuntu:focal-20210609

RUN  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update \
  && apt-get upgrade -y \
#  时区
  && apt-get install tzdata \
  && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo 'Asia/Shanghai' > /etc/timezone \
#  清理
  && apt-get autoremove

ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai
