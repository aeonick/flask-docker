# flask

FROM alpine:latest
MAINTAINER Colin <admin@skyin.win>

RUN apk add --no-cache python2
RUN apk add --no-cache py2-pip
RUN apk add --no-cache py-mysqldb
RUN apk add --no-cache py2-gevent

RUN mkdir -p /www
RUN pip install --no-cache-dir Flask gunicorn

WORKDIR /www
EXPOSE 8000
CMD ["sh", "profile"]