---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_convex Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationConvex Resource
---

# airbyte_destination_convex (Resource)

DestinationConvex Resource

## Example Usage

```terraform
resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "ecdd0a64-9bfa-4ec1-81e5-5ae9a4e94cf7"
  name          = "...my_name..."
  workspace_id  = "c753766d-fb7a-4ec8-a514-3a8d07d6f56b"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the destination e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided. Requires replacement if changed.

### Read-Only

- `created_at` (Number)
- `destination_id` (String)
- `destination_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `access_key` (String, Sensitive) API access key used to send data to a Convex deployment.
- `deployment_url` (String) URL of the Convex deployment that is the destination

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_destination_convex.my_airbyte_destination_convex ""
```
