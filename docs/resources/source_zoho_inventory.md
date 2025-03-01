---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_zoho_inventory Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceZohoInventory Resource
---

# airbyte_source_zoho_inventory (Resource)

SourceZohoInventory Resource

## Example Usage

```terraform
resource "airbyte_source_zoho_inventory" "my_source_zohoinventory" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain        = "com.au"
    refresh_token = "...my_refresh_token..."
    start_date    = "2022-06-28T18:07:02.217Z"
  }
  definition_id = "59c74cfe-b428-40d1-b466-cd38cfada0be"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ebb86cc-42ee-4e88-bd34-e708670d2c5c"
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

- `client_id` (String, Sensitive)
- `client_secret` (String, Sensitive)
- `refresh_token` (String, Sensitive)
- `start_date` (String)

Optional:

- `domain` (String) The domain suffix for the Zoho Inventory API based on your data center location (e.g., 'com', 'eu', 'in', etc.). Default: "com"; must be one of ["com", "in", "jp", "eu", "com.au", "ca", "com.cn", "sa"]

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_zoho_inventory.my_airbyte_source_zoho_inventory ""
```
