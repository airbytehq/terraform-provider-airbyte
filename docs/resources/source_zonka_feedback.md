---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_zonka_feedback Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceZonkaFeedback Resource
---

# airbyte_source_zonka_feedback (Resource)

SourceZonkaFeedback Resource

## Example Usage

```terraform
resource "airbyte_source_zonka_feedback" "my_source_zonkafeedback" {
  configuration = {
    auth_token = "...my_auth_token..."
    datacenter = "e"
  }
  definition_id = "5076e843-dbcb-431d-85e8-9e8fe58cf536"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5866054c-12ed-4ab8-931f-c0cc6814a666"
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

- `auth_token` (String, Sensitive) Auth token to use. Generate it by navigating to Company Settings > Developers > API in your Zonka Feedback account.
- `datacenter` (String) The identifier for the data center, such as 'us1' or 'e' for EU. must be one of ["us1", "e"]

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_zonka_feedback.my_airbyte_source_zonka_feedback ""
```
