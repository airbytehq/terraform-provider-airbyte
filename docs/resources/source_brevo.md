---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_brevo Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceBrevo Resource
---

# airbyte_source_brevo (Resource)

SourceBrevo Resource

## Example Usage

```terraform
resource "airbyte_source_brevo" "my_source_brevo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-07-31T08:25:33.562Z"
  }
  definition_id = "c6f78ebe-bdc0-473f-8ce8-d4b01bcd2208"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b1edff7f-a272-48f5-a008-77388d6dc78b"
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

- `api_key` (String, Sensitive)
- `start_date` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_brevo.my_airbyte_source_brevo ""
```
