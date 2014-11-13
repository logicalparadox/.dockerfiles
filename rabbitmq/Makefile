DOCKER_ACCOUNT=logicalparadox

AMQP_VERSION=3.4.1

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/rabbitmq .
	docker tag ${DOCKER_ACCOUNT}/rabbitmq ${DOCKER_ACCOUNT}/rabbitmq:${AMQP_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/rabbitmq

.PHONY: all build push
