---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_railz Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceRailz Resource
---

# airbyte_source_railz (Resource)

SourceRailz Resource

## Example Usage

```terraform
resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "d48e30cc-cb1d-439d-9fc6-49b7a58a5636"
  name          = "Anna Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "38f32285-6cd8-48e7-a494-b9e5830e9efb"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the source e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.
- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.

### Read-Only

- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `client_id` (String) Client ID (client_id)
- `secret_key` (String, Sensitive) Secret key (secret_key)
- `start_date` (String) Start date

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_railz.my_airbyte_source_railz ""
```
