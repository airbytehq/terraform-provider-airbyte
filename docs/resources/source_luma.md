---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_luma Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceLuma Resource
---

# airbyte_source_luma (Resource)

SourceLuma Resource

## Example Usage

```terraform
resource "airbyte_source_luma" "my_source_luma" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "41f13919-c925-4e38-a517-a80112166a5e"
  name          = "Kyle Jones"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bce2e77b-bcce-4f58-8ac5-48be8a7a9dbf"
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

- `api_key` (String, Sensitive) Get your API key on lu.ma Calendars dashboard → Settings.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_luma.my_airbyte_source_luma ""
```
