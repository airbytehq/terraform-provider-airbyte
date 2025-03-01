---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_uservoice Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceUservoice Resource
---

# airbyte_source_uservoice (Resource)

SourceUservoice Resource

## Example Usage

```terraform
resource "airbyte_source_uservoice" "my_source_uservoice" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2020-12-17T16:04:10.789Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "c1105c8f-352b-45aa-a8c9-6e50cfced2f0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "60e002b0-4c5f-4158-91cc-8e940b7dda37"
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

- `created_at` (Number)
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `api_key` (String, Sensitive)
- `start_date` (String)
- `subdomain` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_uservoice.my_airbyte_source_uservoice ""
```
