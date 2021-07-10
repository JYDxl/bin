FROM minio/minio:RELEASE.2021-07-08T19-43-25Z.fips

ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai

ENV MINIO_ROOT_USER root
ENV MINIO_ROOT_PASSWORD XLrootJYD713

COPY ../ubuntu/timezone/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
