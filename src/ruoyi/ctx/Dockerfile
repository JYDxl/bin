FROM azul/zulu-openjdk-alpine:8u372-jre

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories && \
    apk --update add tzdata && \
    apk add fontconfig ttf-dejavu && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

COPY ruoyi-admin.jar /ruoyi-admin.jar
CMD java -jar ruoyi-admin.jar

EXPOSE 8080
