# Using External Secret References

External secret storage is an Airbyte Enterprise feature. If your Airbyte
organization or workspace is eligible and has
[custom secret storage configured](https://docs.airbyte.com/platform/operating-airbyte/external-secrets),
you can reference secrets that already exist in your external secret manager
instead of passing raw secret values in your Terraform configuration.

## How It Works

Any connector configuration field marked as a secret can accept a value prefixed
with `secret_coordinate::` followed by the key or path of the secret in your
configured secret manager. Airbyte stores the text after the prefix as the
external secret coordinate, then resolves that coordinate at runtime by reading
the secret value from your secret manager.

## Example

Using the generic `airbyte_source` resource:

```terraform
resource "airbyte_source" "postgres" {
  name          = "My Postgres Source"
  workspace_id  = var.workspace_id
  definition_id = var.postgres_source_definition_id

  configuration = jsonencode({
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "airbyte_user"
    password = "secret_coordinate::production/database/password"
  })
}
```

In this example, instead of providing the actual password, you pass
`secret_coordinate::production/database/password`. For AWS Secrets Manager,
`production/database/password` is an example path-style secret name; Airbyte uses
the text after `secret_coordinate::` as the AWS Secrets Manager `SecretId`.

## Reading Back Secret Coordinates

When reading source or destination configurations, secret fields are redacted by
default (`***`). To see the stored secret coordinates instead, set
`include_secret_coordinates = true` on the data source:

```terraform
data "airbyte_source" "example" {
  source_id                  = airbyte_source.postgres.source_id
  include_secret_coordinates = true
}
```

## Prerequisites

- Your Airbyte organization or workspace must have a custom secret storage
  configured. On Airbyte Cloud, contact your Airbyte representative to set this
  up.
- The secret coordinate you pass after the `secret_coordinate::` prefix must
  match the key, path, or name of a secret that exists in your configured secret
  manager.

## Learn More

For full details on how external secret references work, see the
[Airbyte documentation on External Secret References](https://docs.airbyte.com/platform/operating-airbyte/external-secrets#using-external-secret-references-in-connector-configurations).
