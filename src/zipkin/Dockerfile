FROM openzipkin/zipkin:2.23.18

RUN apk add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

ENV RABBIT_ADDRESSES rabbitmq-stats:5672
ENV RABBIT_USER root
ENV RABBIT_PASSWORD XLrootJYD713
