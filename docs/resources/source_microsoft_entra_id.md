---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_microsoft_entra_id Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMicrosoftEntraID Resource
---

# airbyte_source_microsoft_entra_id (Resource)

SourceMicrosoftEntraID Resource

## Example Usage

```terraform
resource "airbyte_source_microsoft_entra_id" "my_source_microsoftentraid" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    tenant_id     = "...my_tenant_id..."
    user_id       = "...my_user_id..."
  }
  definition_id = "cd531ddc-641b-45ed-b16f-c4637d58c3f8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "786c4c9c-92fd-48ec-b049-b1d2d9bff29e"
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

- `client_id` (String, Sensitive)
- `client_secret` (String, Sensitive)
- `tenant_id` (String, Sensitive)
- `user_id` (String, Sensitive)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_microsoft_entra_id.my_airbyte_source_microsoft_entra_id ""
```
