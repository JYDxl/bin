FROM canal/canal-server:v1.1.5

ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai

ENV canal.admin.manager canal-admin-server:8089
ENV canal.admin.user admin
ENV canal.admin.passwd 82f874cce395c2462bf1bac8df01c5e8ddd753cb

ENV canal.instance.master.address mysql-server:3306
ENV canal.instance.dbUsername canal
ENV canal.instance.dbPassword canal

ENV canal.serverMode rabbitMQ
ENV rabbitmq.host rabbitmq-server
ENV rabbitmq.virtual.host /
ENV rabbitmq.exchange canal-exchange
ENV rabbitmq.username root
ENV rabbitmq.password XLrootJYD713
ENV rabbitmq.deliveryMode 2
ENV canal.mq.topic=routing-key
