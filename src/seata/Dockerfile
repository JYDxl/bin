FROM seataio/seata-server:1.5.2

ENV LANG zh_CN.UTF-8

ARG IP
ENV SEATA_IP $IP
#ENV SEATA_CONFIG_NAME file:/root/seata-config/registry

COPY conf/registry.conf /seata-server/resources/registry.conf
#COPY conf/file.conf /seata-server/resources/file.conf
COPY conf/mysql-connector-java-8.0.26.jar /seata-server/libs/mysql-connector-java.jar
