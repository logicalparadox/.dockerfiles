FROM logicalparadox/ubuntu:14.04
MAINTAINER Jake Luer "jake@alogicalparadox.com"

RUN apt-get install -yq git

RUN \
  mkdir -p /usr/local/go && \
  mkdir -p /gopath && \
  curl https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz | tar xzf - -C /usr/local/go --strip-components=1

RUN \
  curl -s https://raw.githubusercontent.com/pote/gpm/v1.2.3/bin/gpm > /usr/local/bin/gpm && \
  chmod +x /usr/local/bin/gpm

ENV GOROOT /usr/local/go
ENV GOPATH /gopath
ENV GOBIN $GOPATH/bin
ENV PATH $GOROOT/bin:$GOBIN:$PATH
