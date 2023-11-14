---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_freshsales Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceFreshsales DataSource
---

# airbyte_source_freshsales (Data Source)

SourceFreshsales DataSource

## Example Usage

```terraform
data "airbyte_source_freshsales" "my_source_freshsales" {
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

- `api_key` (String) Freshsales API Key. See <a href="https://crmsupport.freshworks.com/support/solutions/articles/50000002503-how-to-find-my-api-key-">here</a>. The key is case sensitive.
- `domain_name` (String) The Name of your Freshsales domain
- `source_type` (String) must be one of ["freshsales"]

