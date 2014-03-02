# DOCKER-VERSION 0.8.1
FROM ubuntu:13.10

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

# Bundle app source
ADD . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
