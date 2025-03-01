---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_vantage Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceVantage Resource
---

# airbyte_source_vantage (Resource)

SourceVantage Resource

## Example Usage

```terraform
resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "ec1a23b7-466d-4987-acf2-eae96eb456d0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cbcd9ed5-c667-4714-989a-779bea742d01"
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

- `access_token` (String, Sensitive) Your API Access token. See <a href="https://vantage.readme.io/reference/authentication">here</a>.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_vantage.my_airbyte_source_vantage ""
```
