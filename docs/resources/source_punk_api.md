---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_punk_api Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePunkAPI Resource
---

# airbyte_source_punk_api (Resource)

SourcePunkAPI Resource

## Example Usage

```terraform
resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 1
  }
  definition_id = "001e515b-2e74-4052-aa67-dad65e8ae1d2"
  name          = "Dr. Bessie Rolfson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "be7d2d34-33ea-4862-b99c-ad5c4b833469"
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

- `brewed_after` (String) To extract specific data with Unique ID
- `brewed_before` (String) To extract specific data with Unique ID

Optional:

- `id` (String) To extract specific data with Unique ID


