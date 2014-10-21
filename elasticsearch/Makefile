DOCKER_ACCOUNT=logicalparadox

UNSTABLE_VERSION=1.4.0-BETA1

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/elasticsearch:unstable ./unstable/
	docker tag ${DOCKER_ACCOUNT}/elasticsearch:unstable ${DOCKER_ACCOUNT}/elasticsearch:${UNSTABLE_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/elasticsearch

.PHONY: all build push
