---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_drip Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceDrip Resource
---

# airbyte_source_drip (Resource)

SourceDrip Resource

## Example Usage

```terraform
resource "airbyte_source_drip" "my_source_drip" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "489079e9-9886-42ba-aa19-995b1c4b5495"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "defc769b-91e1-40c0-a867-525c4c5185fc"
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

- `api_key` (String, Sensitive) API key to use. Find it at https://www.getdrip.com/user/edit

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_drip.my_airbyte_source_drip ""
```
