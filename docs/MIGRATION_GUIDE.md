# Migrating to 1.0

## Overview

Version 1.0 of the Airbyte Terraform provider introduces **generic connector resources** (`airbyte_source` and `airbyte_destination`) that replace the typed connector-specific resources (e.g., `airbyte_source_postgres`, `airbyte_destination_bigquery`).

> **Deprecation Notice**
> Typed connector-specific resources are **officially deprecated** as of 1.0. They remain available in 1.0 for backward compatibility but are **targeted for removal in 1.1**. Migrate to the generic resources at your earliest convenience.

The generic resources accept freeform JSON configuration via `jsonencode()`, which means they are immune to upstream schema changes that previously caused `422 Unprocessable Entity` errors with typed resources.

The recommended way to use the generic resources is with the [`airbyte_connector_configuration`](data-sources/connector_configuration.md) data source, which provides:
- Automatic `definition_id` resolution from connector name
- Type-validated configuration (catches errors at `terraform plan` time)
- Separation of sensitive and non-sensitive values for clean diffs

## Migration walkthrough

> **Warning**
> The `moved` block approach requires **Terraform 1.8 or later**. For older versions, see [Alternative methods (Terraform < 1.8)](#alternative-methods-terraform--18) below.

This walkthrough shows a complete migration from a typed resource to the generic resource with validated configuration, using `moved` to preserve state.

### Step 1 — Replace the typed resource

Remove the typed resource and add a `moved` block pointing from the old address to the new one. Use the `airbyte_connector_configuration` data source for type-validated configuration and automatic `definition_id` resolution.

**Before (typed resource):**

```hcl
resource "airbyte_source_postgres" "my_pg_source" {
  name         = "Production Postgres"
  workspace_id = var.workspace_id

  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "readonly"
    password = var.db_password
  }
}
```

**After (generic resource with validated configuration):**

```hcl
moved {
  from = airbyte_source_postgres.my_pg_source
  to   = airbyte_source.my_pg_source
}

data "airbyte_connector_configuration" "my_pg_source_config" {
  connector_name = "source-postgres"
  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "readonly"
  }
  configuration_secrets = {
    password = var.db_password
  }
}

resource "airbyte_source" "my_pg_source" {
  name          = "Production Postgres"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.my_pg_source_config.definition_id
  configuration = data.airbyte_connector_configuration.my_pg_source_config.configuration_json
}
```

The `airbyte_connector_configuration` data source validates your configuration against the connector's JSON schema during `terraform plan`, so typos and missing fields are caught before apply. Non-sensitive values (`host`, `port`, etc.) produce clean diffs, while the merged `configuration_json` is marked sensitive.

### Step 2 — Update references

Update any resources that reference the old typed resource:

```hcl
# Before:
source_id = airbyte_source_postgres.my_pg_source.source_id

# After:
source_id = airbyte_source.my_pg_source.source_id
```

### Step 3 — Plan and verify

Run `terraform plan` and confirm:

- There are **no** destroy actions.
- Terraform shows `moved` for the resource, not `create`/`destroy`.
- Any updates shown are configuration changes you expect.

### Step 4 — Apply and clean up

Run `terraform apply` to complete the migration. After a successful apply, you may optionally remove the `moved` block — it is only required during the initial migration.

### Migrating destinations

The same approach works for destinations:

```hcl
moved {
  from = airbyte_destination_bigquery.my_dest
  to   = airbyte_destination.my_dest
}

data "airbyte_connector_configuration" "bigquery" {
  connector_name = "destination-bigquery"
  configuration = {
    project_id = "my-gcp-project"
    dataset_id = "my_dataset"
  }
  configuration_secrets = {
    credentials_json = var.gcp_credentials
  }
}

resource "airbyte_destination" "my_dest" {
  name          = "BigQuery"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.bigquery.definition_id
  configuration = data.airbyte_connector_configuration.bigquery.configuration_json
}
```

### Migrating from `_custom` resources

If you are using `airbyte_source_custom` or `airbyte_destination_custom` from a pre-1.0 provider version, these have been replaced by the generic `airbyte_source` and `airbyte_destination` resources. The generic resources have the same contract (JSON configuration, `definition_id`, etc.), so migrating is straightforward:

```hcl
moved {
  from = airbyte_source_custom.my_source
  to   = airbyte_source.my_source
}

resource "airbyte_source" "my_source" {
  name          = "My Custom Source"
  workspace_id  = var.workspace_id
  definition_id = "ab5e6175-68e1-4c17-bff9-56103bbb0d80"

  configuration = jsonencode({
    api_key = var.api_key
    host    = "api.example.com"
  })
}
```

> **Note**
> The `_custom` resources already used JSON configuration, so your `configuration` block can remain unchanged. Only the resource type name changes.

## Inline JSON configuration (without the data source)

For simpler cases where you don't need type validation or the sensitive/non-sensitive split, pass JSON configuration directly:

```hcl
resource "airbyte_source" "my_source" {
  name          = "My Postgres Source"
  workspace_id  = var.workspace_id
  definition_id = "decd338e-5647-4c0b-adf4-da0e75f5a750"
  configuration = jsonencode({
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "readonly"
    password = var.db_password
  })
}
```

The entire `configuration` attribute is sensitive, so all values are hidden in plan output. Use this approach when you don't need per-field diff visibility.

### Finding the definition_id

The generic resource requires a `definition_id` to identify the connector type. You can find it by:

- Using the `airbyte_connector_configuration` data source to resolve it automatically from the connector name (recommended).
- Running `terraform state show airbyte_source_postgres.my_source` before migrating and noting the `definition_id` attribute.
- Looking up the connector in the Airbyte UI under **Settings > Sources** or **Settings > Destinations**.

## Alternative methods (Terraform < 1.8)

If you cannot use Terraform 1.8+, you can migrate using either `removed` + `import` blocks (Terraform 1.7.x) or CLI commands (any Terraform version).

### Option A: `removed` + `import` blocks (Terraform 1.7.x)

```hcl
removed {
  from = airbyte_source_postgres.my_source
  lifecycle {
    destroy = false
  }
}

import {
  to = airbyte_source.my_source
  id = "<SOURCE_ID>"
}

resource "airbyte_source" "my_source" {
  name          = "Postgres"
  workspace_id  = var.workspace_id
  definition_id = "<POSTGRES_DEFINITION_ID>"

  configuration = jsonencode({
    # Your configuration here
  })
}
```

Run `terraform plan` to verify, then `terraform apply`. Afterward, remove the `removed` and `import` blocks.

### Option B: CLI commands (any Terraform version)

```bash
# Back up your state
terraform state pull > backup.tfstate

# Remove the old resource from state (does NOT delete from Airbyte)
terraform state rm airbyte_source_postgres.my_source

# Update your .tf files to use the generic resource (see examples above)

# Import the existing resource into the new address
terraform import airbyte_source.my_source "<SOURCE_ID>"

# Verify
terraform plan
```

> **Note**
> Between `state rm` and `import`, the resource is unmanaged. Run these commands together without interruption.
