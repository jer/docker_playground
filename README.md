Docker Playground
=================

This is a Vagrant image for playing with various docker images. Just
run `vagrant up`, and there is a working docker with a handful of
`Dockerfile`s for experimentation.

Docker build scripts
--------------------

**chef-solo**: Intended as a playground for creating Docker images with
chef-solo.

**logstash**: A basic Docker image running the logstash server and
embedded elasticsearch and kibnana.

Steps to build and run (after `vagrant up`, `vagrant ssh`):

- Install and run elasticsearch:

      cd /vagrant/logstash/elasticsearch
      sudo docker build -t metrics/elasticsearch .
      sudo docker run -d -p 9200:9200 --name elasticsearch metrics/elasticsearch

- Install and run the logstash indexer and web interface:

      cd /vagrant/logstash/logstash-server
      sudo docker build -t metrics/logstash .
      sudo docker run -d -p 9292:9292 --link elasticsearch:elasticsearch metrics/logstash

- Visit `http://192.168.100.5:9292/` in your browser.


**node.js_app**: A simple node.js app in a box. Not much here for the
time being. Based on
http://docs.docker.io/en/latest/examples/nodejs_web_app/#nodejs-web-app

