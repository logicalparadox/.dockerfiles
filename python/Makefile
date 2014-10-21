DOCKER_ACCOUNT=logicalparadox

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/python .
	docker tag ${DOCKER_ACCOUNT}/python ${DOCKER_ACCOUNT}/python:2.7

push:
	docker push ${DOCKER_ACCOUNT}/python

.PHONY: all build push
