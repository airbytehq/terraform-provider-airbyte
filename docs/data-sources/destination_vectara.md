---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_vectara Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationVectara DataSource
---

# airbyte_destination_vectara (Data Source)

DestinationVectara DataSource

## Example Usage

```terraform
data "airbyte_destination_vectara" "my_destination_vectara" {
  destination_id = "...my_destination_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `destination_id` (String)

### Read-Only

- `configuration` (String) The values required to configure the destination. Parsed as JSON.
- `created_at` (Number)
- `definition_id` (String)
- `destination_type` (String)
- `name` (String)
- `workspace_id` (String)
