---
page_title: "Using Connector Modules"
subcategory: "Guides"
description: |-
  How to use external Terraform modules for Airbyte connectors.
---

# Using Connector Modules

Starting with provider version 1.0, connector-specific resources (e.g., `airbyte_destination_dev_null`, `airbyte_source_postgres`) have been moved to **external Terraform modules**. This guide explains how to use them.

## Why Modules?

Previously, connector schemas were bundled into the provider, requiring a provider release for every connector update. The module approach decouples connectors, allowing:

- Independent connector version updates
- Smaller provider binary
- Faster iteration on connector schemas

## Module Repository

All connector modules are available at:

- **Browse modules:** https://airbytehq.github.io/airbyte-terraform-modules/
- **GitHub repo:** https://github.com/airbytehq/airbyte-terraform-modules

## Example: Dev Null Destination

### Old Approach (Deprecated)

```terraform
resource "airbyte_destination_dev_null" "example" {
  name         = "my-dev-null"
  workspace_id = var.workspace_id
  configuration = {
    test_destination = {
      silent = {
        test_destination_type = "SILENT"
      }
    }
  }
}
```

### New Approach (Modules)

```terraform
module "destination_dev_null" {
  source = "github.com/airbytehq/airbyte-terraform-modules//destinations/destination-dev-null/0.8.5"

  workspace_id                           = var.workspace_id
  name                                   = "my-dev-null"
  test_destination_test_destination_type = "SILENT"
  test_destination_logging_config        = {}
  test_destination_millis_per_record     = 0
  test_destination_num_messages          = 0
}
```

### Using Module Outputs

Module outputs can be referenced in other resources:

```terraform
resource "airbyte_connection" "example" {
  destination_id = module.destination_dev_null.destination_id
  source_id      = airbyte_source_custom.my_source.source_id
  name           = "my-connection"
  status         = "active"
  # ...
}
```

## Finding Module Configuration Options

Each module's available variables are defined in its `variables.tf` file.

### Browse GitHub (Recommended)

Navigate directly to the module's `variables.tf`:

```
https://github.com/airbytehq/airbyte-terraform-modules/blob/main/destinations/<connector>/<version>/variables.tf
```

Example: [destination-dev-null/0.8.5/variables.tf](https://github.com/airbytehq/airbyte-terraform-modules/blob/main/destinations/destination-dev-null/0.8.5/variables.tf)

### Download and Inspect

Download from the [modules page](https://airbytehq.github.io/airbyte-terraform-modules/) and inspect `variables.tf`.

### Variable Naming Convention

Module variables use **flattened names** derived from the connector's JSON schema:

| JSON Config Path | Module Variable |
|------------------|-----------------|
| `test_destination.logging_config` | `test_destination_logging_config` |
| `test_destination.test_destination_type` | `test_destination_test_destination_type` |

Nested objects become underscore-separated variable names. Check `variables.tf` for the exact names and types.

## Module Source Options

| Method | Source Value |
|--------|--------------|
| GitHub | `github.com/airbytehq/airbyte-terraform-modules//destinations/destination-dev-null/0.8.5` |
| Local | `./modules/destination-dev-null/0.8.5` |
| HTTPS | `https://airbytehq.github.io/airbyte-terraform-modules/modules/destinations-destination-dev-null-0.8.5.tar.gz` |

## Migrating Existing Resources

To migrate without recreating resources:

```bash
# Remove from state
terraform state rm airbyte_destination_dev_null.example

# Import into module
terraform import 'module.destination_dev_null.airbyte_destination_custom.destination-dev-null' <destination_id>
```

## Available Modules

| Type | Count | Browse |
|------|-------|--------|
| Sources | 584 | [View Sources](https://airbytehq.github.io/airbyte-terraform-modules/?search=source-) |
| Destinations | 85 | [View Destinations](https://airbytehq.github.io/airbyte-terraform-modules/?search=destination-) |

## Generic Resources

For connectors without a dedicated module, use the generic custom resources:

- [`airbyte_source_custom`](../resources/source_custom.md) - Any source connector
- [`airbyte_destination_custom`](../resources/destination_custom.md) - Any destination connector

These accept a `definition_id` and JSON `configuration` for maximum flexibility.

