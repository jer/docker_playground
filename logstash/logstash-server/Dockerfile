# DOCKER-VERSION 0.8.1
FROM ubuntu:13.10

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless wget

ADD . /logstash
WORKDIR /logstash

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-1.3.3-flatjar.jar -O /logstash/logstash.jar

CMD [ "bin/start_logstash" ]
