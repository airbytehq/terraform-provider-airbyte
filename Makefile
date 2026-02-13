.PHONY: all docs post-generate
all: speakeasy

speakeasy:
	speakeasy run

post-generate:
	uvx --from=poethepoet poe post-generate

docs:
	go mod tidy
	go mod download
	go generate ./...

