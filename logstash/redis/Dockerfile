# DOCKER-VERSION 0.8.1
FROM ubuntu:13.10

ADD . /redis
WORKDIR /redis

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless wget build-essential

RUN wget http://download.redis.io/releases/redis-2.8.6.tar.gz
RUN tar xzf redis-2.8.6.tar.gz
WORKDIR /redis/redis-2.8.6
RUN make

CMD [ "src/redis-server" ]
