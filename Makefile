.PHONY: all docs
all: speakeasy docs

speakeasy:
	speakeasy generate sdk --lang terraform -o . -s airbyte.yaml

docs:
	go generate ./...

