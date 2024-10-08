---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_coda Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceCoda Resource
---

# airbyte_source_coda (Resource)

SourceCoda Resource

## Example Usage

```terraform
resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "2381cdc2-e964-42f3-82fe-19c32edfee92"
  name          = "Kim Dickens"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3ad2c887-f28e-4f97-9a7b-102e5487915a"
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

- `auth_token` (String, Sensitive) Bearer token

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_coda.my_airbyte_source_coda ""
```
