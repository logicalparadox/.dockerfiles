FROM logicalparadox/ubuntu:14.04
MAINTAINER Jake Luer "jake@alogicalparadox.com"

ENV DEBIAN_FRONTEND noninteractive

ADD http://www.rabbitmq.com/rabbitmq-signing-key-public.asc /tmp/
RUN apt-key add /tmp/rabbitmq-signing-key-public.asc

RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
RUN apt-get -q update
RUN apt-get -qy upgrade 
RUN apt-get -qy install pwgen rabbitmq-server

RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management

ADD run.sh /run.sh
ADD set_rabbitmq_password.sh /set_rabbitmq_password.sh
RUN chmod 755 /*.sh

CMD ["/run.sh"]
VOLUME ["/var/log/rabbitmq", "/var/lib/rabbitmq"]
EXPOSE 5672 15672
