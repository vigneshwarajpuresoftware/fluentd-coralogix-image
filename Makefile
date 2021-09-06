.PHONY:	publish

PREFIX = ajv21
IMAGE = fluentd-coralogix-image-latest
TAG ?= $(or ${VERSION},${TRAVIS_TAG},1.0.0)

build:
	docker buildx version
	docker buildx create --use --name mybuilder
	docker buildx rm mybuilder
