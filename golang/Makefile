DOCKER_ACCOUNT=logicalparadox

GOLANG_VERSION=1.3.3

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/golang .
	docker tag ${DOCKER_ACCOUNT}/golang ${DOCKER_ACCOUNT}/golang:${GOLANG_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/golang

.PHONY: all build push
