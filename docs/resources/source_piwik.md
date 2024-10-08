---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_piwik Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePiwik Resource
---

# airbyte_source_piwik (Resource)

SourcePiwik Resource

## Example Usage

```terraform
resource "airbyte_source_piwik" "my_source_piwik" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    organization_id = "...my_organization_id..."
  }
  definition_id = "cf2b6755-1109-40ec-ac18-f2017e88b7a8"
  name          = "Tonya Gutkowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5e84efb6-a935-4326-9882-dc6ea377e2f3"
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

- `client_id` (String, Sensitive)
- `client_secret` (String, Sensitive)
- `organization_id` (String) The organization id appearing at URL of your piwik website

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_piwik.my_airbyte_source_piwik ""
```
