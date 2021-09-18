FROM yandex/clickhouse-server:latest

ENV TZ Asia/Shanghai

ARG NODE

COPY conf/config-$NODE.xml /etc/clickhouse-server/config.xml
COPY conf/users.xml /etc/clickhouse-server/users.xml
