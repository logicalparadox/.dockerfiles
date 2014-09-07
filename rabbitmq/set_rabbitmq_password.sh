#!/bin/bash

if [ -v RABBITMQ_UNSECURE ]; then
  echo "RabbitMQ will run in unsecure mode."
  cat > /etc/rabbitmq/rabbitmq.config <<EOF
[
  {rabbit, [{loopback_users, []}]}
].
EOF
  touch /.rabbitmq_password_set
  exit 0
fi

if [ -f /.rabbitmq_password_set ]; then
  echo "RabbitMQ password already set!"
  exit 0
fi

PASS=${RABBITMQ_PASS:-$(pwgen -s 12 1)}
USER=${RABBITMQ_USER:-"admin"}

_word=$( [ ${RABBITMQ_PASS} ] && echo "preset" || echo "random" )
echo "=> Securing RabbitMQ with a ${_word} password"
cat > /etc/rabbitmq/rabbitmq.config <<EOF
[
  {rabbit, [{default_user, <<"$USER">>},{default_pass, <<"$PASS">>},{tcp_listeners, [{"0.0.0.0", 5672}]}]}
].
EOF

echo "=> Done!"
touch /.rabbitmq_password_set

echo "========================================================================"
echo "RabbitMQ User: $USER
echo "RabbitMQ Password: $PASS
echo "========================================================================"
