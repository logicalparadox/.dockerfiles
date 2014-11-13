DOCKER_ACCOUNT=logicalparadox

UNSTABLE_VERSION=4.0.0-BETA2

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/kibana:unstable ./unstable/
	docker tag ${DOCKER_ACCOUNT}/kibana:unstable ${DOCKER_ACCOUNT}/kibana:${UNSTABLE_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/kibana

.PHONY: all build push
