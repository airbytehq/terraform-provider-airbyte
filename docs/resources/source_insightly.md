---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_insightly Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceInsightly Resource
---

# airbyte_source_insightly (Resource)

SourceInsightly Resource

## Example Usage

```terraform
resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "be57bfa4-6127-4442-b75e-d08074e17a64"
  name          = "Clayton Herman Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab94fe75-a513-4e00-9777-93827c06dd86"
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

- `start_date` (String) The date from which you'd like to replicate data for Insightly in the format YYYY-MM-DDT00:00:00Z. All data generated after this date will be replicated. Note that it will be used only for incremental streams.
- `token` (String, Sensitive) Your Insightly API token.


