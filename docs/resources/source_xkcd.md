---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_xkcd Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceXkcd Resource
---

# airbyte_source_xkcd (Resource)

SourceXkcd Resource

## Example Usage

```terraform
resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {}
  definition_id = "3dd760cc-3ae1-4d77-9ee9-78f160f45746"
  name          = "Dr. Salvatore Bergnaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0243724c-2fa9-40b3-bc58-aed9663e07de"
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


