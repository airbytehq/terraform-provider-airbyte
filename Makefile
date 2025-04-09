.PHONY: all docs
all: speakeasy

speakeasy:
	speakeasy run

docs:
	go mod tidy
	go mod download
	go generate ./...

