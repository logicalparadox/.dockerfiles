DOCKER_ACCOUNT=logicalparadox

STABLE_VERSION=0.10.32
UNSTABLE_VERSION=0.11.14

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/nodejs ./stable/
	docker tag ${DOCKER_ACCOUNT}/nodejs ${DOCKER_ACCOUNT}/nodejs:stable
	docker tag ${DOCKER_ACCOUNT}/nodejs:stable ${DOCKER_ACCOUNT}/nodejs:${STABLE_VERSION}
	docker build -t ${DOCKER_ACCOUNT}/nodejs:unstable ./unstable/
	docker tag ${DOCKER_ACCOUNT}/nodejs:unstable ${DOCKER_ACCOUNT}/nodejs:${UNSTABLE_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/nodejs

.PHONY: all build push
