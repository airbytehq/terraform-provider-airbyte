# Declarative source definition ID regression fixture

This fixture creates a low-code declarative source definition, an
`airbyte_source` that references its definition ID, a SILENT `destination-dev-null`
destination, and an `airbyte_connection`. The connection is enabled by
default through `enable_connection = true`.

For the complete procedure, use the declarative source ID scenario in the
e2e-testing skill. The procedure applies the initial configuration, checks for
drift, changes only `manifest_description`, plans and applies that change, and
compares the source and connection IDs before and after the apply. The fixed
provider must avoid replacement markers and report `0 to destroy`; a clean
`origin/main` binary must show the source and connection replacement cascade.

The manifest uses the reachable JSONPlaceholder `/posts` endpoint with an
inline schema. Its CDK manifest version is `6.48.15`. The connection
specification allows additional properties because Cloud injects
`__injected_declarative_manifest` during DISCOVER.
