FROM ubuntu:trusty

MAINTAINER paimpozhil@gmail.com

RUN mkdir /data

VOLUME /data

RUN apt-get update

RUN apt-get install git nano nodejs npm libxml2-dev -y

RUN git clone https://github.com/ajaxorg/cloud9.git /cloud9

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN cd /cloud9 && npm install

EXPOSE 3131

CMD /cloud9/bin/cloud9.sh -l 0.0.0.0 --username c9 --password awesome -w /data

