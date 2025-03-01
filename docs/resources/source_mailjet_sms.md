---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_mailjet_sms Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMailjetSms Resource
---

# airbyte_source_mailjet_sms (Resource)

SourceMailjetSms Resource

## Example Usage

```terraform
resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "8d2d57af-c707-47f6-9874-0cf4bb73f66c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b9bc8b7b-3b26-4253-a0c0-614a8184ad04"
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

- `token` (String, Sensitive) Your access token. See <a href="https://dev.mailjet.com/sms/reference/overview/authentication">here</a>.

Optional:

- `end_date` (Number) Retrieve SMS messages created before the specified timestamp. Required format - Unix timestamp.
- `start_date` (Number) Retrieve SMS messages created after the specified timestamp. Required format - Unix timestamp.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_mailjet_sms.my_airbyte_source_mailjet_sms ""
```
