DOCKER_ACCOUNT=logicalparadox

FDB_VERSION=2.0.9

all: build push

build:
	docker build -t ${DOCKER_ACCOUNT}/fdbcli .
	docker tag ${DOCKER_ACCOUNT}/fdbcli ${DOCKER_ACCOUNT}/fdbcli:${FDB_VERSION}

push:
	docker push ${DOCKER_ACCOUNT}/fdbcli

.PHONY: all build push
