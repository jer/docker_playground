# DOCKER-VERSION 0.8.1
FROM ubuntu:13.10

ADD . /logstash
WORKDIR /logstash

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless wget

RUN wget http://semicomplete.com/files/logstash/logstash-1.1.1-monolithic.jar -O /logstash/logstash.jar

CMD [ "java",  "-jar",  "/logstash/logstash.jar",  "agent", "-f", "/logstash/logstash-complex.conf", "--", "web", "--backend", "elasticsearch:///?local" ]
