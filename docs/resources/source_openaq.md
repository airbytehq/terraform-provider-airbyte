---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_openaq Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceOpenaq Resource
---

# airbyte_source_openaq (Resource)

SourceOpenaq Resource

## Example Usage

```terraform
resource "airbyte_source_openaq" "my_source_openaq" {
  configuration = {
    api_key = "...my_api_key..."
    country_ids = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "4749a147-4bf6-47ca-9bb0-047b4e548536"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3edd5344-04d7-4e15-af1a-24d81b653a9a"
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
- `country_ids` (List of String) The list of IDs of countries (comma separated) you need the data for, check more: https://docs.openaq.org/resources/countries

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_openaq.my_airbyte_source_openaq ""
```
