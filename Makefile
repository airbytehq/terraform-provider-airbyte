.PHONY: post-generate docs-generate bin-generate clean-generated generate-spec generate-full

POE := uvx --from=poethepoet poe

post-generate:
	$(POE) post-generate

docs-generate:
	$(POE) docs-generate

bin-generate:
	$(POE) bin-generate

clean-generated:
	$(POE) clean-generated

generate-spec:
	$(POE) generate-spec

generate-full:
	$(POE) generate-full

