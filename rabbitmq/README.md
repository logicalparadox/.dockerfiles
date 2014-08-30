# RabbitMQ [![Docker.io Hub](http://img.shields.io/badge/docker.io%20hub-logicalparadox%2Frabbitmq-blue.svg?style=flat-square)](https://registry.hub.docker.com/u/logicalparadox/rabbitmq/)

> [RabbitMQ](http://www.rabbitmq.com/) for Docker.io

    docker pull logicalparadox/rabbitmq

### Volumes

 - /var/lib/rabbitmq
 - /var/log/rabbitmq

### Ports

 - 5672
 - 15672

### Environment Variables

 - `RABBITMQ_NODENAME` (default: "bunny")
 - `RABBITMQ_HOSTNAME` (default: $HOSTNAME)
 - `RABBITMQ_USER` (default: "admin")
 - `RABBITMQ_PASS` (default: random)

### Unsecure Mode

By defining the environment variable `RABBITMQ_UNSECURE=1`, RabbitMQ will start 
with the default credentials and accept connections from any loopback service 
(instead of just local). Use with caution.

### Example Usage

    docker run -d logicalparadox/rabbitmq \
      -p 5672:5672 \
      -p 15672:15672 \
      -v volumes/lib:/volumes/lib/rabbitmq \
      -v volumes/log:/volumes/log/rabbitmq \
      -e RABBITMQ_HOSTNAME="bunny.mydomain.com" \
      -e RABBITMQ_PASS="$upers3cret"
