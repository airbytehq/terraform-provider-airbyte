---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_configcat Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceConfigcat Resource
---

# airbyte_source_configcat (Resource)

SourceConfigcat Resource

## Example Usage

```terraform
resource "airbyte_source_configcat" "my_source_configcat" {
  configuration = {
    password = "...my_password..."
    username = "Clara.McDermott63"
  }
  definition_id = "bf17c2d5-0cb6-4e6f-b332-bdf145775fcb"
  name          = "Casey Boyer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "466bf78b-3b7d-4ede-947f-c7c1cb53c351"
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

- `password` (String, Sensitive) Basic auth password. See <a href="https://api.configcat.com/docs/#section/Authentication">here</a>.
- `username` (String) Basic auth user name. See <a href="https://api.configcat.com/docs/#section/Authentication">here</a>.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_configcat.my_airbyte_source_configcat ""
```
