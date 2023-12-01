.PHONY: all docs speakeasy
all: speakeasy docs

speakeasy: airbyte_overlayed.yaml
	speakeasy generate sdk --lang terraform -o . -s airbyte_overlayed.yaml

airbyte_overlayed.yaml: overlay.yaml airbyte.yaml
	speakeasy overlay apply -o ./overlay.yaml -s airbyte.yaml > airbyte_overlayed.yaml

docs:
	go generate ./...

