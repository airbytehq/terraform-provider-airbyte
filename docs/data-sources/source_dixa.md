---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_dixa Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceDixa DataSource
---

# airbyte_source_dixa (Data Source)

SourceDixa DataSource

## Example Usage

```terraform
data "airbyte_source_dixa" "my_source_dixa" {
  secret_id = "...my_secret_id..."
  source_id = "...my_source_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `source_id` (String)

### Optional

- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow.

### Read-Only

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String)
- `workspace_id` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Read-Only:

- `api_token` (String) Dixa API token
- `batch_size` (Number) Number of days to batch into one request. Max 31.
- `source_type` (String) must be one of ["dixa"]
- `start_date` (String) The connector pulls records updated from this date onwards.

