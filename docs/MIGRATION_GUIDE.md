# Migrating from Typed to Generic Resources

> **Warning**
> The `moved` block approach described in this guide requires **Terraform 1.8 or later**. If you are using an older version of Terraform, see the [alternative migration methods](#alternative-methods-terraform-17) section below.

## When to migrate

You should migrate from a typed resource to the generic resource when:

- Your connector's configuration has changed upstream and the typed resource schema no longer matches, causing validation errors such as `422 Unprocessable Entity`.
- You are upgrading to a provider version that has removed the typed resource you were using.
- You want to manage connector configuration with freeform JSON to avoid future schema mismatches.

For example, if `airbyte_source_pardot` fails because the connector renamed `page_size` to `v5_page_size`, you can migrate to `airbyte_source` which accepts any valid configuration.

## Migration with `moved` block (Terraform 1.8+)

This provider supports cross-resource-type state migration using Terraform's `moved` block. This is the safest approach because it is declarative, auditable in version control, and prevents accidental resource deletion.

### Step 1: Replace the typed resource with a `moved` block and generic resource

Remove the old typed resource block and add a `moved` block pointing from the old address to the new one. Then define the new generic resource.

**Before:**

```hcl
resource "airbyte_source_pardot" "my_source" {
  name         = "Pardot"
  workspace_id = var.workspace_id

  configuration = {
    client_id               = var.pardot_client_id
    client_secret           = var.pardot_client_secret
    refresh_token           = var.pardot_refresh_token
    pardot_business_unit_id = "0Uv5g0000008OT2CAM"
    start_date              = "2024-07-11T00:00:00Z"
    is_sandbox              = false
  }
}
```

**After:**

```hcl
moved {
  from = airbyte_source_pardot.my_source
  to   = airbyte_source.my_source
}

resource "airbyte_source" "my_source" {
  name          = "Pardot"
  workspace_id  = var.workspace_id
  definition_id = "5e6175e5-68e1-4c17-bff9-56103bbb0d80"

  configuration = {
    client_id               = var.pardot_client_id
    client_secret           = var.pardot_client_secret
    refresh_token           = var.pardot_refresh_token
    pardot_business_unit_id = "0Uv5g0000008OT2CAM"
    start_date              = "2024-07-11T00:00:00Z"
    is_sandbox              = false
  }
}
```

### Step 2: Update references

Update any resources that reference the old typed resource. For example, if you have an `airbyte_connection` that references the source:

```hcl
# Before:
source_id = airbyte_source_pardot.my_source.source_id

# After:
source_id = airbyte_source.my_source.source_id
```

### Step 3: Plan and verify

Run `terraform plan` and confirm:

- There are **no** destroy actions.
- Terraform shows `moved` for the resource, not `create`/`destroy`.
- Any updates shown are configuration changes you expect.

### Step 4: Apply

Run `terraform apply` to complete the migration.

### Step 5: Clean up

After a successful apply, remove the `moved` block from your configuration. It is a one-time migration directive.

### Finding the definition_id

The generic resource requires a `definition_id` to identify the connector type. You can find it by:

- Running `terraform state show airbyte_source_pardot.my_source` before migrating and noting the `definition_id` attribute.
- Looking up the connector in the Airbyte UI under **Settings > Sources** or **Settings > Destinations**.
- Using the `airbyte_connector_configuration` data source to resolve the connector name automatically (see below).

### Using the connector configuration data source

The `airbyte_connector_configuration` data source resolves a connector name (e.g. `source-postgres`) to its `definition_id` and lets you split sensitive from non-sensitive configuration for clean Terraform diffs:

```hcl
data "airbyte_connector_configuration" "my_postgres" {
  connector_name = "source-postgres"
  configuration  = jsonencode({
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "readonly"
  })
  configuration_secrets = jsonencode({
    password = var.db_password
  })
}

resource "airbyte_source" "my_source" {
  name          = "My Postgres Source"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.my_postgres.definition_id
  configuration = data.airbyte_connector_configuration.my_postgres.configuration_json
}
```

Non-sensitive values (`host`, `port`, etc.) produce clean diffs in `terraform plan`, while the merged `configuration_json` passed to the resource is marked sensitive.

### Inline JSON configuration

For simpler cases where you don't need the data source, pass JSON configuration directly to `airbyte_source` or `airbyte_destination`:

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

### Migrating destinations

The same approach works for destinations. Replace `airbyte_destination_*` with `airbyte_destination`:

```hcl
moved {
  from = airbyte_destination_bigquery.my_dest
  to   = airbyte_destination.my_dest
}

resource "airbyte_destination" "my_dest" {
  name          = "BigQuery"
  workspace_id  = var.workspace_id
  definition_id = "<BIGQUERY_DEFINITION_ID>"

  configuration = {
    # Your destination configuration here
  }
}
```

## Alternative methods (Terraform < 1.8) {#alternative-methods-terraform-17}

If you cannot use Terraform 1.8+, you can migrate using either `removed` + `import` blocks (Terraform 1.7.x) or CLI commands (any Terraform version).

### Option A: `removed` + `import` blocks (Terraform 1.7.x)

```hcl
removed {
  from = airbyte_source_pardot.my_source
  lifecycle {
    destroy = false
  }
}

import {
  to = airbyte_source.my_source
  id = "<SOURCE_ID>"
}

resource "airbyte_source" "my_source" {
  name          = "Pardot"
  workspace_id  = var.workspace_id
  definition_id = "<PARDOT_DEFINITION_ID>"

  configuration = {
    # Your configuration here
  }
}
```

Run `terraform plan` to verify, then `terraform apply`. Afterward, remove the `removed` and `import` blocks.

### Option B: CLI commands (any Terraform version)

```bash
# Back up your state
terraform state pull > backup.tfstate

# Remove the old resource from state (does NOT delete from Airbyte)
terraform state rm airbyte_source_pardot.my_source

# Update your .tf files to use the generic resource (see examples above)

# Import the existing resource into the new address
terraform import airbyte_source.my_source "<SOURCE_ID>"

# Verify
terraform plan
```

> **Note**
> Between `state rm` and `import`, the resource is unmanaged. Run these commands together without interruption.
