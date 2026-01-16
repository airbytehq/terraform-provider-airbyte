.PHONY: all docs speakeasy inject-custom-resources
all: speakeasy

speakeasy:
	speakeasy run
	./scripts/inject_custom_resources.sh

inject-custom-resources:
	./scripts/inject_custom_resources.sh

docs:
	go mod tidy
	go mod download
	go generate ./...

