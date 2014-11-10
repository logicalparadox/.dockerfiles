FROM logicalparadox/ubuntu:14.04
MAINTAINER Jake Luer "jake@alogicalparadox.com"

RUN apt-get install -yq git

ENV GOLANG_VERSION 1.3.3
ENV GPM_VERSION 1.3.1

RUN \
  mkdir -p /usr/local/go && \
  mkdir -p /gopath && \
  curl https://storage.googleapis.com/golang/go$GOLANG_VERSION.linux-amd64.tar.gz | tar xzf - -C /usr/local/go --strip-components=1

RUN \
  curl -s https://raw.githubusercontent.com/pote/gpm/v$GPM_VERSION/bin/gpm > /usr/local/bin/gpm && \
  chmod +x /usr/local/bin/gpm

ENV GOROOT /usr/local/go
ENV GOPATH /gopath
ENV GOBIN $GOPATH/bin
ENV PATH $GOROOT/bin:$GOBIN:$PATH
