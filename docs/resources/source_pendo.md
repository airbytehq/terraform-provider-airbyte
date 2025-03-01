---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_pendo Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePendo Resource
---

# airbyte_source_pendo (Resource)

SourcePendo Resource

## Example Usage

```terraform
resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "0095a640-e559-4766-826e-beced15bc886"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c389f35-1a33-4f9f-9deb-a47c0e8cb860"
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

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_pendo.my_airbyte_source_pendo ""
```
