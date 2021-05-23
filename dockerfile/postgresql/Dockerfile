FROM postgres:13.3-alpine

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
  && apk update \
  && apk add -U tzdata \
  && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo 'Asia/Shanghai' > /etc/timezone

ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
ENV POSTGRES_USER root
ENV POSTGRES_PASSWORD XLrootJYD713
