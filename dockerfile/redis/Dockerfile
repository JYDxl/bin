FROM redis:6.2.4-alpine3.13

RUN \
#设置镜像地址
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update \
    && apk upgrade \
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
