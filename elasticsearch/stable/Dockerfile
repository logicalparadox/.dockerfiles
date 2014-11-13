FROM logicalparadox/java:oracle-java7
MAINTAINER Jake Luer <jake@alogicalparadox.com>

# Download kibana
RUN \
  mkdir -p /opt/elasticsearch && \
  curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.0.tar.gz | tar zxf - -C /opt/elasticsearch --strip-components=1

# Add in config
ADD config.yml /opt/elasticsearch/config/elasticsearch.yml

# Primary Exports
VOLUME [ "/data" ]
EXPOSE 9200
EXPOSE 9300
CMD [ "/opt/elasticsearch/bin/elasticsearch" ]
