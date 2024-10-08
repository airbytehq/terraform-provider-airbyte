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
  definition_id = "00c8feba-7b45-4cfe-a08a-bdda328f6c37"
  name          = "Alyssa Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "63420a6a-3ab4-4d44-b55b-910e5c999e89"
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
