---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_linnworks Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceLinnworks Resource
---

# airbyte_source_linnworks (Resource)

SourceLinnworks Resource

## Example Usage

```terraform
resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2020-12-21T06:32:33.807Z"
    token              = "...my_token..."
  }
  definition_id = "00140680-fd4c-43b3-a2e6-cac56e028360"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "edbb51ee-1b69-47f5-a33b-fed5630aded2"
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

- `application_id` (String) Linnworks Application ID
- `application_secret` (String, Sensitive) Linnworks Application Secret
- `start_date` (String) UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated.
- `token` (String, Sensitive)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_linnworks.my_airbyte_source_linnworks ""
```
