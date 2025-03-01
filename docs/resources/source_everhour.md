---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_everhour Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceEverhour Resource
---

# airbyte_source_everhour (Resource)

SourceEverhour Resource

## Example Usage

```terraform
resource "airbyte_source_everhour" "my_source_everhour" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a20445f4-c824-4df3-b87f-7f75b250a588"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "82708ec6-c2bd-4b5d-b195-522529ad336c"
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

- `api_key` (String, Sensitive) Everhour API Key. See the <a href="https://everhour.docs.apiary.io/#introduction/authentication">docs</a> for information on how to generate this key.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_everhour.my_airbyte_source_everhour ""
```
