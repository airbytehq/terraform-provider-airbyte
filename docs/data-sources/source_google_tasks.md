---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_google_tasks Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceGoogleTasks DataSource
---

# airbyte_source_google_tasks (Data Source)

SourceGoogleTasks DataSource

## Example Usage

```terraform
data "airbyte_source_google_tasks" "my_source_googletasks" {
  source_id = "...my_source_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `source_id` (String)

### Read-Only

- `configuration` (String) The values required to configure the source. Parsed as JSON.
- `name` (String)
- `source_type` (String)
- `workspace_id` (String)

