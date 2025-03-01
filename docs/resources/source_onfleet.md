---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_onfleet Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceOnfleet Resource
---

# airbyte_source_onfleet (Resource)

SourceOnfleet Resource

## Example Usage

```terraform
resource "airbyte_source_onfleet" "my_source_onfleet" {
  configuration = {
    api_key  = "...my_api_key..."
    password = "...my_password..."
  }
  definition_id = "4bafffe5-8e6d-4726-8a4d-6659229f5f09"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "03094c43-97ec-4a28-924b-cc5cb8d3f14c"
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

- `api_key` (String, Sensitive) API key to use for authenticating requests. You can create and manage your API keys in the API section of the Onfleet dashboard.

Optional:

- `password` (String, Sensitive) Placeholder for basic HTTP auth password - should be set to empty string. Default: "x"

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_onfleet.my_airbyte_source_onfleet ""
```
