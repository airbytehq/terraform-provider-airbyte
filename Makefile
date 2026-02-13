.PHONY: post-generate docs clean-generated generate-spec generate-full

POE := uvx --from=poethepoet poe

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

