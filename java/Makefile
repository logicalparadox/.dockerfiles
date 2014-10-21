DOCKER_ACCOUNT=logicalparadox

all: oracle-java7 push

oracle-java7:
	docker build -t ${DOCKER_ACCOUNT}/java:oracle-java7 oracle-java7/

push:
	docker push ${DOCKER_ACCOUNT}/java

.PHONY: all push oracle-java7
