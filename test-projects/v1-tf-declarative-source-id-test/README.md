# Declarative source definition ID regression fixture

This fixture creates a low-code declarative source definition and an
`airbyte_source` whose `definition_id` references the definition ID.

For the runtime assertion procedure, use the declarative source ID scenario in
the e2e-testing skill. After changing only the manifest, the fixed provider
must keep `id` known, avoid replacement markers, and report `0 to destroy`.
