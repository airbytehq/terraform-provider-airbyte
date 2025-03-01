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
  definition_id = "542dff28-ff35-4067-b75b-e0658aab8a8f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0dfd0bfe-6e77-4725-b2d3-cf8a98202e5e"
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

- `created_at` (Number)
- `source_id` (String)
- `source_type` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_custom.my_airbyte_source_custom ""
```
