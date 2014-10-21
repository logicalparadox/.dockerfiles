FROM logicalparadox/java:oracle-java7
MAINTAINER Jake Luer <jake@alogicalparadox.com>

# Download kibana
RUN \
  mkdir -p /opt/kibana && \
  curl https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-BETA1.1.tar.gz | tar zxf - -C /opt/kibana --strip-components=1

# export
EXPOSE 5601
CMD ["/opt/kibana/bin/kibana"]
