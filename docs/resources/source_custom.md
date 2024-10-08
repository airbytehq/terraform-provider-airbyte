---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_custom Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceCustom Resource
---

# airbyte_source_custom (Resource)

SourceCustom Resource

## Example Usage

```terraform
resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "93eb1144-8c1c-4d3a-be5e-f85381e22d9f"
  name          = "Henry Price Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "24121e63-15be-4306-a4e8-3994413a7c75"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (String) The values required to configure the source. Parsed as JSON.
- `name` (String) Name of the source e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.
- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.

### Read-Only

- `source_id` (String)
- `source_type` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_custom.my_airbyte_source_custom ""
```
