# Declarative source definition ID regression fixture

This fixture creates a low-code declarative source definition, an
`airbyte_source` whose `definition_id` references the definition ID, and (by
default, via `enable_connection`) a SILENT `destination-dev-null` destination
and a connection.

For the runtime assertion procedure, use the declarative source ID scenario in
the e2e-testing skill. After changing only the manifest, the fixed provider
must keep `id` known, avoid replacement markers, and report `0 to destroy`.
