FROM logicalparadox/python:2.7
MAINTAINER Jake Luer "jake@alogicalparadox.com"

RUN apt-get -qy install build-essential curl git

RUN \
  mkdir /opt/nodejs && \
  curl http://nodejs.org/dist/v0.11.14/node-v0.11.14-linux-x64.tar.gz \
    | tar xzf - -C /opt/nodejs --strip-components=1

ENV PATH /opt/nodejs/bin:$PATH
