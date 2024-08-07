---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_whisky_hunter Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceWhiskyHunter Resource
---

# airbyte_source_whisky_hunter (Resource)

SourceWhiskyHunter Resource

## Example Usage

```terraform
resource "airbyte_source_whisky_hunter" "my_source_whiskyhunter" {
  configuration = {}
  definition_id = "f2e77213-6664-46fa-9b2d-b7532b28cb78"
  name          = "Olivia Lesch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad9bb4c2-d04c-46ce-b0e4-409659dbf6ec"
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

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_whisky_hunter.my_airbyte_source_whisky_hunter ""
```
