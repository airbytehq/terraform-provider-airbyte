---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_airtable Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceAirtable Resource
---

# airbyte_source_airtable (Resource)

SourceAirtable Resource

## Example Usage

```terraform
resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-01-14T11:50:58.504Z"
      }
      personal_access_token = {
        api_key = "key1234567890"
      }
    }
  }
  definition_id = "fdd0b7d7-bc62-4e45-9809-2513b5f90d61"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "110737e7-1846-4cca-8ebc-d0f82e4b8ffb"
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

Optional:

- `credentials` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials))

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `o_auth20` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--o_auth20))
- `personal_access_token` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--personal_access_token))

<a id="nestedatt--configuration--credentials--o_auth20"></a>
### Nested Schema for `configuration.credentials.o_auth20`

Required:

- `client_id` (String, Sensitive) The client ID of the Airtable developer application.
- `client_secret` (String, Sensitive) The client secret of the Airtable developer application.
- `refresh_token` (String, Sensitive) The key to refresh the expired access token.

Optional:

- `access_token` (String, Sensitive) Access Token for making authenticated requests.
- `token_expiry_date` (String) The date-time when the access token should be refreshed.


<a id="nestedatt--configuration--credentials--personal_access_token"></a>
### Nested Schema for `configuration.credentials.personal_access_token`

Required:

- `api_key` (String, Sensitive) The Personal Access Token for the Airtable account. See the <a href="https://airtable.com/developers/web/guides/personal-access-tokens">Support Guide</a> for more information on how to obtain this token.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_airtable.my_airbyte_source_airtable ""
```
