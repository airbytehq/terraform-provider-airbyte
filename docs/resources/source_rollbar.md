---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_rollbar Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceRollbar Resource
---

# airbyte_source_rollbar (Resource)

SourceRollbar Resource

## Example Usage

```terraform
resource "airbyte_source_rollbar" "my_source_rollbar" {
  configuration = {
    account_access_token = "...my_account_access_token..."
    project_access_token = "...my_project_access_token..."
    start_date           = "2022-09-20T11:27:18.642Z"
  }
  definition_id = "426504bb-5bb9-490a-9b4d-4bbfe4324584"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "42be0db2-a152-4027-a103-e5e0ac5819d4"
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

- `account_access_token` (String, Sensitive)
- `project_access_token` (String, Sensitive)
- `start_date` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_rollbar.my_airbyte_source_rollbar ""
```
