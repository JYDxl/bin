FROM yandex/clickhouse-server:21.7.3.14

#配置环境
ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai

COPY conf/config.xml /etc/clickhouse-server/config.xml
COPY conf/users.xml /etc/clickhouse-server/users.xml
