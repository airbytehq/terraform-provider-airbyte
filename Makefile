.PHONY: all speakeasy post-generate docs clean-generated generate-spec generate-full

POE := uvx --from=poethepoet poe

all: speakeasy

speakeasy:
	speakeasy run

post-generate:
	$(POE) post-generate

docs:
	$(POE) docs

clean-generated:
	$(POE) clean-generated

generate-spec:
	$(POE) generate-spec

generate-full:
	$(POE) generate-full

