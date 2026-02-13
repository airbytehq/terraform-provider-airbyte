.PHONY: all docs post-generate
all: speakeasy

speakeasy:
	speakeasy run

post-generate:
	python3 scripts/patch_provider_registrations.py internal/provider/provider.go
	go mod tidy

docs:
	go mod tidy
	go mod download
	go generate ./...

