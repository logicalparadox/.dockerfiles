FROM logicalparadox/ubuntu:14.04
MAINTAINER Jake Luer "jake@alogicalparadox.com"

# Install script dependencies
RUN apt-get -qy install erlang-nox pwgen

# Install and configure
ADD https://www.rabbitmq.com/releases/rabbitmq-server/v3.3.5/rabbitmq-server_3.3.5-1_all.deb /tmp/
RUN dpkg -i /tmp/rabbitmq-server_3.3.5-1_all.deb
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management

# RabbitMQ Scripts
ADD run.sh /run.sh
ADD set_rabbitmq_password.sh /set_rabbitmq_password.sh
RUN chmod 755 /*.sh

# Cleanup
RUN rm -rf /tmp/* /var/tmp/*
RUN rm -rf /var/lib/apt/lists/*

# Primary exports
CMD ["/run.sh"]
VOLUME ["/var/log/rabbitmq", "/var/lib/rabbitmq"]
EXPOSE 5672 15672
