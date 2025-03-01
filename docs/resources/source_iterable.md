---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_iterable Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceIterable Resource
---

# airbyte_source_iterable (Resource)

SourceIterable Resource

## Example Usage

```terraform
resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "1e6d92c0-d528-4e92-ac5d-17a0ca574482"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a46bf3e2-e63d-4e32-8959-37721daec43c"
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

- `api_key` (String, Sensitive) Iterable API Key. See the <a href=\"https://docs.airbyte.com/integrations/sources/iterable\">docs</a>  for more information on how to obtain this key.
- `start_date` (String) The date from which you'd like to replicate data for Iterable, in the format YYYY-MM-DDT00:00:00Z.  All data generated after this date will be replicated.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_iterable.my_airbyte_source_iterable ""
```
