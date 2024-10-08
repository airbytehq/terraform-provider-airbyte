---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_omnisend Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceOmnisend Resource
---

# airbyte_source_omnisend (Resource)

SourceOmnisend Resource

## Example Usage

```terraform
resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a21f7398-6a71-4e99-ac2b-81056bc977a3"
  name          = "Cary Graham"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f8dd835d-8042-47d2-ba4e-1d8c723c8e5e"
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

- `api_key` (String, Sensitive) API Key

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_omnisend.my_airbyte_source_omnisend ""
```
