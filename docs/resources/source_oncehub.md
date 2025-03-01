---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_oncehub Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceOncehub Resource
---

# airbyte_source_oncehub (Resource)

SourceOncehub Resource

## Example Usage

```terraform
resource "airbyte_source_oncehub" "my_source_oncehub" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-10-15T02:57:32.059Z"
  }
  definition_id = "99a855fa-ae59-4c44-919b-22f8f6cfcfcf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a84854a6-ad04-4a87-bf5c-27bda24e70dc"
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

- `api_key` (String, Sensitive) API key to use. Find it in your OnceHub account under the API & Webhooks Integration page.
- `start_date` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_oncehub.my_airbyte_source_oncehub ""
```
