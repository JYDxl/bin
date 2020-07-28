FROM ubuntu:trusty-20191217

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update

ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
