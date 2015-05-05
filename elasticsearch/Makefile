DOCKER_ACCOUNT=logicalparadox

STABLE_VERSION=1.5.2

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/elasticsearch ./stable/
	docker tag ${DOCKER_ACCOUNT}/elasticsearch ${DOCKER_ACCOUNT}/elasticsearch:${STABLE_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/elasticsearch

.PHONY: all build push
