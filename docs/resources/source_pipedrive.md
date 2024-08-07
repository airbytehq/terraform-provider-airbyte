---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_pipedrive Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePipedrive Resource
---

# airbyte_source_pipedrive (Resource)

SourcePipedrive Resource

## Example Usage

```terraform
resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "70c28b27-8d25-4e4e-a4a5-1abe7bbe4e8d"
  name          = "Derrick Wehner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7ba5cf8d-b48a-42cc-8047-b120c3ecc155"
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

- `api_token` (String, Sensitive) The Pipedrive API Token.
- `replication_start_date` (String) UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated. When specified and not None, then stream will behave as incremental

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_pipedrive.my_airbyte_source_pipedrive ""
```
