FROM rabbitmq:3.8.17-management-alpine

RUN \
#设置镜像地址
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update \
#安装常用工具包
#    && apk add curl tree bash iproute2 \
#设置时区
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache \
    && rm -rf /tmp/*

#配置环境
ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai

ENV RABBITMQ_DEFAULT_USER root
ENV RABBITMQ_DEFAULT_PASS XLrootJYD713
RUN rabbitmq-plugins enable --all
