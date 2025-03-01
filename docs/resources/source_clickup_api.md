---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_clickup_api Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceClickupAPI Resource
---

# airbyte_source_clickup_api (Resource)

SourceClickupAPI Resource

## Example Usage

```terraform
resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    include_closed_tasks = false
  }
  definition_id = "7542ebd2-e9bb-4a52-af3d-2b3e20642e3c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d80d9ecd-ad43-45b9-b169-26b4aacea6c9"
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

- `api_token` (String, Sensitive) Every ClickUp API call required authentication. This field is your personal API token. See <a href="https://clickup.com/api/developer-portal/authentication/#personal-token">here</a>.

Optional:

- `include_closed_tasks` (Boolean) Include or exclude closed tasks. By default, they are excluded. See <a https://clickup.com/api/clickupreference/operation/GetTasks/#!in=query&path=include_closed&t=request">here</a>. Default: false

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_clickup_api.my_airbyte_source_clickup_api ""
```
