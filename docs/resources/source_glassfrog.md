---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_glassfrog Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceGlassfrog Resource
---

# airbyte_source_glassfrog (Resource)

SourceGlassfrog Resource

## Example Usage

```terraform
resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "57e54a27-b617-4a01-ae6b-f68e1922df28"
  name          = "Mrs. Iris Jast"
  secret_id     = "...my_secret_id..."
  workspace_id  = "13a52314-031f-4d7b-82b3-c164c1950da3"
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

- `api_key` (String, Sensitive) API key provided by Glassfrog

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_glassfrog.my_airbyte_source_glassfrog ""
```
