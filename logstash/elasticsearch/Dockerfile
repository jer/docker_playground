# DOCKER-VERSION 0.8.1
FROM ubuntu:13.10

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless wget

RUN apt-get install -y unzip
ADD . /elasticsearch
WORKDIR /elasticsearch

EXPOSE 9200 9300

RUN bin/install_es
CMD [ "elasticsearch/bin/elasticsearch",  "-f" ]
