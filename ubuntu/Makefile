DOCKER_ACCOUNT=logicalparadox

all: build push

build:
	docker build --no-cache -t ${DOCKER_ACCOUNT}/ubuntu .
	docker tag -f ${DOCKER_ACCOUNT}/ubuntu ${DOCKER_ACCOUNT}/ubuntu:14.04

push:
	docker push ${DOCKER_ACCOUNT}/ubuntu

.PHONY: all build push
