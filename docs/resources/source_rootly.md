---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_rootly Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceRootly Resource
---

# airbyte_source_rootly (Resource)

SourceRootly Resource

## Example Usage

```terraform
resource "airbyte_source_rootly" "my_source_rootly" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-12-01T23:35:04.737Z"
  }
  definition_id = "01babc36-0067-4c21-b3d6-3d2c2351d667"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "608b15f0-56a5-4aa1-ac20-3a2801c30ba9"
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

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_rootly.my_airbyte_source_rootly ""
```
