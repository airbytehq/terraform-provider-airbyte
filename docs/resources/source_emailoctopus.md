---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_emailoctopus Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceEmailoctopus Resource
---

# airbyte_source_emailoctopus (Resource)

SourceEmailoctopus Resource

## Example Usage

```terraform
resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "f954592a-564e-4330-94ba-94f6462a605b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ca0daa2a-a8c7-4462-9e10-c89a2a7450a0"
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

- `api_key` (String, Sensitive) EmailOctopus API Key. See the <a href="https://help.emailoctopus.com/article/165-how-to-create-and-delete-api-keys">docs</a> for information on how to generate this key.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_emailoctopus.my_airbyte_source_emailoctopus ""
```
