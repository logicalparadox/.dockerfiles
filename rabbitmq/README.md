[![Docker.io Hub](http://img.shields.io/badge/docker.io-logicalparadox%2Frabbitmq-blue.svg?style=flat-square)](https://registry.hub.docker.com/u/logicalparadox/rabbitmq/)

# RabbitMQ 

Provides a tagged [docker(1)](http://docker.io) build for [RabbitMQ](http://rabbitmq.com).
This provides a number of configuration options for a production use as well as 
quick spin up of an unsecure instance for development use. 

## Example Usage

### Production Usage

    docker run -d logicalparadox/rabbitmq \
      -p 5672:5672 \
      -p 15672:15672 \
      -v volumes/lib:/volumes/lib/rabbitmq \
      -v volumes/log:/volumes/log/rabbitmq \
      -e RABBITMQ_HOSTNAME="bunny.mydomain.com" \
      -e RABBITMQ_PASS="$upers3cret"

### Development Usage

    docker run -d logicalparadox/rabbitmq \
      -p 5672:5672 \
      -e RABBITMQ_UNSECURE=1

## Configuration

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

## Credit Due

- Initial scripts from [tutumcloud/tutum-docker-rabbitmq](https://github.com/tutumcloud/tutum-docker-rabbitmq).
