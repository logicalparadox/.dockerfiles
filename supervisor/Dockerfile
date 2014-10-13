FROM logicalparadox/ubuntu:14.04
MAINTAINER Jake Luer <jake@alogicalparadox.com>

# Install supervisor
RUN apt-get install -y supervisor

# Add default config
ADD supervisor.conf /etc/supervisor.conf

# Set default entrypoint
ENTRYPOINT supervisord -c /etc/supervisor.conf
