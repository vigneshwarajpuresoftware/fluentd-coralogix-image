.PHONY:	publish

PREFIX = ajv21
IMAGE = fluentd-coralogix-image-latest
TAG ?= $(or ${VERSION},${TRAVIS_TAG},1.0.0)

build:
	docker --version
	docker buildx build create --name samplekit
	docker buildx rm samplekit
