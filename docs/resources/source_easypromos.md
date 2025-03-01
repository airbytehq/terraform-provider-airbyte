---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_easypromos Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceEasypromos Resource
---

# airbyte_source_easypromos (Resource)

SourceEasypromos Resource

## Example Usage

```terraform
resource "airbyte_source_easypromos" "my_source_easypromos" {
  configuration = {
    bearer_token = "...my_bearer_token..."
  }
  definition_id = "9cafccdf-f0f9-4f01-ab79-298a80674ef5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "34b293ab-de89-4c66-aad1-b4f59b3af9d7"
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

- `bearer_token` (String, Sensitive)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_easypromos.my_airbyte_source_easypromos ""
```
