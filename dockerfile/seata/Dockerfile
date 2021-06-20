FROM seataio/seata-server:1.4.2

ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
#ENV SEATA_CONFIG_NAME file:/root/seata-config/registry

COPY conf/registry.conf /seata-server/resources/registry.conf
#COPY conf/file.conf /seata-server/resources/file.conf
COPY conf/mysql-connector-java-8.0.25.jar /seata-server/libs/mysql-connector-java.jar
