# Using External Secret References

If your Airbyte organization or workspace has a [custom secret storage configured](https://docs.airbyte.com/platform/enterprise-flex/external-secrets), you can reference secrets that already exist in your external secret manager (AWS Secrets Manager, Google Secret Manager, Azure Key Vault, etc.) instead of passing raw secret values in your Terraform configuration.

## How It Works

Any connector configuration field marked as a secret (e.g., passwords, API keys, tokens) can accept a value prefixed with `secret_coordinate::` followed by the name of the secret in your configured secret manager. Airbyte resolves the reference at runtime by reading the secret value from your secret manager.

## Example

Using the generic `airbyte_source` resource:

```terraform
resource "airbyte_source" "postgres" {
  name         = "My Postgres Source"
  workspace_id = var.workspace_id
  definition_id = var.postgres_source_definition_id

  configuration = jsonencode({
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "airbyte_user"
    password = "secret_coordinate::my-pg-password"
  })
}
```

In this example, instead of providing the actual password, you pass `secret_coordinate::my-pg-password`. Airbyte resolves this reference from your configured secret manager at runtime.

## Reading Back Secret Coordinates

When reading source or destination configurations, secret fields are redacted by default (`***`). To see the stored secret coordinates instead, set `include_secret_coordinates = true` on the data source:

```terraform
data "airbyte_source" "example" {
  source_id                  = airbyte_source.postgres.source_id
  include_secret_coordinates = true
}
```

## Prerequisites

- Your Airbyte organization or workspace must have a custom secret storage configured. On Airbyte Cloud, contact your Airbyte representative to set this up.
- The secret name you pass after the `secret_coordinate::` prefix must match the name of a secret that exists in your configured secret manager.

## Learn More

For full details on how external secret references work, see the [Airbyte documentation on External Secret References](https://docs.airbyte.com/platform/understanding-airbyte/secrets#external-secret-references).
