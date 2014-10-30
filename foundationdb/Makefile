DOCKER_ACCOUNT=logicalparadox

FDB_VERSION=2.0.9

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/foundationdb .
	docker tag ${DOCKER_ACCOUNT}/foundationdb ${DOCKER_ACCOUNT}/foundationdb:${FDB_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/foundationdb

.PHONY: all build push
