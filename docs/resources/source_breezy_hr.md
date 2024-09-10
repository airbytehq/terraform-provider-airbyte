---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_breezy_hr Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceBreezyHr Resource
---

# airbyte_source_breezy_hr (Resource)

SourceBreezyHr Resource

## Example Usage

```terraform
resource "airbyte_source_breezy_hr" "my_source_breezyhr" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = "...my_company_id..."
  }
  definition_id = "baef8e47-4905-488d-8e29-39574a681eea"
  name          = "Danielle Rice"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a1fb187d-3322-43d8-8bb9-9362d2f45974"
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

- `api_key` (String, Sensitive)
- `company_id` (String, Sensitive)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_breezy_hr.my_airbyte_source_breezy_hr ""
```