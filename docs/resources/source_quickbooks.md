---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_quickbooks Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceQuickbooks Resource
---

# airbyte_source_quickbooks (Resource)

SourceQuickbooks Resource

## Example Usage

```terraform
resource "airbyte_source_quickbooks" "my_source_quickbooks" {
  configuration = {
    access_token      = "...my_access_token..."
    client_id         = "...my_client_id..."
    client_secret     = "...my_client_secret..."
    realm_id          = "...my_realm_id..."
    refresh_token     = "...my_refresh_token..."
    sandbox           = true
    start_date        = "2021-03-20T00:00:00Z"
    token_expiry_date = "2022-09-21T20:04:23.212Z"
  }
  definition_id = "c133ff2e-7e08-4e71-ae0a-17bbfa4a6a9d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2be97070-b111-42de-bb0f-eafb0a382554"
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

- `access_token` (String, Sensitive) Access token for making authenticated requests.
- `client_id` (String) Identifies which app is making the request. Obtain this value from the Keys tab on the app profile via My Apps on the developer site. There are two versions of this key: development and production.
- `client_secret` (String, Sensitive) Obtain this value from the Keys tab on the app profile via My Apps on the developer site. There are two versions of this key: development and production.
- `realm_id` (String, Sensitive) Labeled Company ID. The Make API Calls panel is populated with the realm id and the current access token.
- `refresh_token` (String, Sensitive) A token used when refreshing the access token.
- `start_date` (String) The default value to use if no bookmark exists for an endpoint (rfc3339 date string). E.g, 2021-03-20T00:00:00Z. Any data before this date will not be replicated.
- `token_expiry_date` (String) The date-time when the access token should be refreshed.

Optional:

- `sandbox` (Boolean) Determines whether to use the sandbox or production environment. Default: false

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_quickbooks.my_airbyte_source_quickbooks ""
```
