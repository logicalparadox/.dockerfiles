#!/bin/bash -e

if [ ! -f /.rabbitmq_password_set ]; then
  /set_rabbitmq_password.sh
fi

node=${RABBITMQ_NODENAME:-"bunny"}
hostname=${RABBITMQ_HOSTNAME:-"${HOSTNAME}"}
nodename=${node}@${hostname}

touch /var/log/rabbitmq/${nodename}-sasl.log
touch /var/log/rabbitmq/${nodename}.log
touch /var/log/rabbitmq/startup_log
touch /var/log/rabbitmq/shutdown_log

echo "NODENAME=${nodename}" > /etc/rabbitmq/rabbitmq-env.conf

chown -R rabbitmq:rabbitmq /var/lib/rabbitmq
chown -R rabbitmq:rabbitmq /var/log/rabbitmq

exec /usr/sbin/rabbitmq-server
