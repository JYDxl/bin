FROM yandex/clickhouse-server:21.6.6.51-alpine

RUN \
#设置镜像地址
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update \
    && apk upgrade \
#安装常用工具包
#    && apk add curl tree bash iproute2 \
#设置时区
    && apk add tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
#    && apk del tzdata \
#    && rm -rf /var/cache/apk/*
#配置环境
ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai
