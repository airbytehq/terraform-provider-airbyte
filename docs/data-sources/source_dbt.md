---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_dbt Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceDbt DataSource
---

# airbyte_source_dbt (Data Source)

SourceDbt DataSource

## Example Usage

```terraform
data "airbyte_source_dbt" "my_source_dbt" {
  source_id = "...my_source_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `source_id` (String)

### Read-Only

- `configuration` (String) The values required to configure the source. Parsed as JSON.
- `created_at` (Number)
- `definition_id` (String)
- `name` (String)
- `source_type` (String)
- `workspace_id` (String)
