---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_pingdom Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePingdom Resource
---

# airbyte_source_pingdom (Resource)

SourcePingdom Resource

## Example Usage

```terraform
resource "airbyte_source_pingdom" "my_source_pingdom" {
  configuration = {
    api_key    = "...my_api_key..."
    probes     = "probe1"
    resolution = "day"
    start_date = "2020-11-15T15:01:45.230Z"
  }
  definition_id = "f670d5e0-b609-425a-ae7d-cb5dfcb8d811"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ae6b211-29a3-44fb-9b57-fe99e65e946c"
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

- `created_at` (Number)
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `api_key` (String, Sensitive)
- `start_date` (String)

Optional:

- `probes` (String)
- `resolution` (String) Default: "hour"; must be one of ["hour", "day", "week"]

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_pingdom.my_airbyte_source_pingdom ""
```
