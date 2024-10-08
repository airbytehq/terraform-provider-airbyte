---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_postmarkapp Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePostmarkapp Resource
---

# airbyte_source_postmarkapp (Resource)

SourcePostmarkapp Resource

## Example Usage

```terraform
resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "8f2436a1-22e3-4949-8819-8a6bf6f1cbdb"
  name          = "Geraldine Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd0e48f1-e4b3-4046-9b6c-a0b303cf017c"
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

- `x_postmark_account_token` (String, Sensitive) API Key for account
- `x_postmark_server_token` (String, Sensitive) API Key for server

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_postmarkapp.my_airbyte_source_postmarkapp ""
```
