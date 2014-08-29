FROM logicalparadox/python:2.7
MAINTAINER Jake Luer "jake@alogicalparadox.com"

RUN apt-get -q update
RUN apt-get -qy upgrade 
RUN apt-get -qy install build-essential curl git

RUN mkdir /opt/nodejs
RUN curl http://nodejs.org/dist/v0.10.31/node-v0.10.31-linux-x64.tar.gz \
    | tar xvzf - -C /opt/nodejs --strip-components=1

ENV PATH $PATH:/opt/nodejs/bin
