# DOCKER-VERSION 0.8.1
FROM ubuntu:13.10

RUN apt-get -y update
RUN apt-get -y install curl git
RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN /opt/chef/embedded/bin/gem install berkshelf
