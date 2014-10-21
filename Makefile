DOCKER_ACCOUNT=logicalparadox

ubuntu:
	cd ubuntu && $(MAKE)

python:
	cd python && $(MAKE)

nodejs: python
	cd nodejs && $(MAKE)

golang:
	cd golang && $(MAKE)

java:
	cd java && $(MAKE)

.PHONY: ubuntu python nodejs golang
.PHONY: java
