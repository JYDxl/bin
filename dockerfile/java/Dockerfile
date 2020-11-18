FROM azul/zulu-openjdk-alpine:15.0.1-15.28.13 as jre-alpine

RUN \
#设置镜像地址
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update \
#安装常用工具包
#    && apk add curl tree bash iproute2 \
#设置时区
    && apk add -U tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone \
#配置环境
ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
