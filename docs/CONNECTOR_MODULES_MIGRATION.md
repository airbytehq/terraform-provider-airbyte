# Migrating to Connector Modules

Starting with the next provider release, **connector-specific resources** (e.g., `airbyte_destination_dev_null`, `airbyte_source_postgres`) are being removed. Use the new **module-based approach** instead.

## Why the Change?

The old approach bundled connector schemas into the provider, requiring a provider release for every connector update. The new approach decouples connectors into separate modules that can be updated independently.

---

## Quick Comparison

### Old Approach (Deprecated)

```hcl
resource "airbyte_destination_dev_null" "example" {
  name         = "my-dev-null"
  workspace_id = var.workspace_id
  configuration = {
    test_destination = {
      logging = { ... }
    }
  }
}

resource "airbyte_connection" "example" {
  destination_id = airbyte_destination_dev_null.example.destination_id
  # ...
}
```

### New Approach (Modules)

```hcl
module "destination_dev_null" {
  source = "github.com/airbytehq/airbyte-terraform-modules//destinations/destination-dev-null/0.8.5"

  workspace_id                          = var.workspace_id
  name                                  = "my-dev-null"
  test_destination_test_destination_type = "SILENT"
  test_destination_logging_config        = {}
  test_destination_millis_per_record     = 0
  test_destination_num_messages          = 0
}

resource "airbyte_connection" "example" {
  destination_id = module.destination_dev_null.destination_id
  # ...
}
```

---

## Module Sources

Modules are hosted at: **https://github.com/airbytehq/airbyte-terraform-modules**

Browse available modules: **https://airbytehq.github.io/airbyte-terraform-modules/**

## Finding Configuration Options

Each module's configuration is defined in its `variables.tf` file. To discover available options:

### Option 1: Browse GitHub (Recommended)

Navigate directly to the module's `variables.tf`:

```
https://github.com/airbytehq/airbyte-terraform-modules/blob/main/destinations/<connector-name>/<version>/variables.tf
```

Example for dev-null 0.8.5:
https://github.com/airbytehq/airbyte-terraform-modules/blob/main/destinations/destination-dev-null/0.8.5/variables.tf

### Option 2: Download and Inspect

1. Download the module tarball from the [modules page](https://airbytehq.github.io/airbyte-terraform-modules/)
2. Extract and open `variables.tf`

### Note on Connector Documentation

While [docs.airbyte.com](https://docs.airbyte.com/integrations/) describes each connector's configuration fields, be aware that:
- The docs show the **raw JSON schema** with nested objects
- Module variables use **flattened names** (see Variable Structure below)

Use the module's `variables.tf` as the source of truth for variable names.

### Variable Structure

Module variables follow a flattened naming convention:

| Connector Config | Module Variable |
|------------------|-----------------|
| `test_destination.logging_config` | `test_destination_logging_config` |
| `test_destination.test_destination_type` | `test_destination_test_destination_type` |

Nested objects become separate variables with underscore-joined names.

### Source Options

| Method | Example |
|--------|---------|
| **GitHub (recommended)** | `source = "github.com/airbytehq/airbyte-terraform-modules//destinations/destination-dev-null/0.8.5"` |
| **Local copy** | `source = "./modules/destination-dev-null/0.8.5"` |
| **HTTPS archive** | `source = "https://airbytehq.github.io/airbyte-terraform-modules/modules/destinations-destination-dev-null-0.8.5.tar.gz"` |

---

## Migration Steps

### 1. Import Existing Resources

If you have existing connectors, import them to avoid recreation:

```bash
# Remove old resource from state
terraform state rm airbyte_destination_dev_null.example

# Import into new module
terraform import module.destination_dev_null.airbyte_destination_custom.destination-dev-null <destination_id>
```

### 2. Update Configuration

Replace the resource block with a module block, mapping the configuration to module variables.

### 3. Run Plan

```bash
terraform plan
```

Verify no unexpected changes before applying.

---

## Key Differences

| Aspect | Old (Resources) | New (Modules) |
|--------|-----------------|---------------|
| **Resource type** | `airbyte_destination_*` | `airbyte_destination_custom` |
| **Schema location** | Bundled in provider | External module |
| **Version updates** | Requires provider release | Update module source |
| **Configuration** | Native HCL attributes | Module variables → JSON |
| **Outputs** | `resource.destination_id` | `module.destination_id` |

---

## Example: Full Configuration

```hcl
terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = ">= 0.14.0"
    }
  }
}

provider "airbyte" {
  client_id     = var.client_id
  client_secret = var.client_secret
  server_url    = "https://api.airbyte.com/v1/"
}

# Destination via module
module "destination_dev_null" {
  source = "github.com/airbytehq/airbyte-terraform-modules//destinations/destination-dev-null/0.8.5"

  workspace_id                           = var.workspace_id
  name                                   = "my-destination"
  test_destination_test_destination_type = "SILENT"
  test_destination_logging_config        = {}
  test_destination_millis_per_record     = 0
  test_destination_num_messages          = 0
}

# Source (custom sources remain unchanged)
resource "airbyte_source_custom" "example" {
  definition_id = var.source_definition_id
  workspace_id  = var.workspace_id
  name          = "my-source"
  configuration = jsonencode({ ... })
}

# Connection references module output
resource "airbyte_connection" "example" {
  destination_id = module.destination_dev_null.destination_id
  source_id      = airbyte_source_custom.example.source_id
  name           = "my-connection"
  status         = "active"
  # ...
}
```

---

## Troubleshooting

### "Unsupported argument: secret_id"

Some modules include `secret_id` which isn't supported yet. Remove or comment out this line in the module's `main.tf`.

### "required property 'test_destination' not found"

The module requires ALL configuration variables to be set (even as empty values) for the config block to be included. Set unused variables to `{}`, `0`, or `null` as appropriate.

---

## Resources

- **Module browser:** https://airbytehq.github.io/airbyte-terraform-modules/
- **Module repo:** https://github.com/airbytehq/airbyte-terraform-modules
- **Provider docs:** https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs

