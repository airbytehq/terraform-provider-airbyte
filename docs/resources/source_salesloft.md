---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_salesloft Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceSalesloft Resource
---

# airbyte_source_salesloft (Resource)

SourceSalesloft Resource

## Example Usage

```terraform
resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
      authenticate_via_o_auth = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-09-08T23:40:53.385Z"
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "6b7eacc4-c8d6-4961-ba68-3ac14af0e8e4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9ee86021-a435-499d-89be-1ea6358d6e40"
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

- `credentials` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials))
- `start_date` (String) The date from which you'd like to replicate data for Salesloft API, in the format YYYY-MM-DDT00:00:00Z. All data generated after this date will be replicated.

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `authenticate_via_api_key` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--authenticate_via_api_key))
- `authenticate_via_o_auth` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--authenticate_via_o_auth))

<a id="nestedatt--configuration--credentials--authenticate_via_api_key"></a>
### Nested Schema for `configuration.credentials.authenticate_via_api_key`

Required:

- `api_key` (String, Sensitive) API Key for making authenticated requests. More instruction on how to find this value in our <a href="https://docs.airbyte.com/integrations/sources/salesloft#setup-guide">docs</a>


<a id="nestedatt--configuration--credentials--authenticate_via_o_auth"></a>
### Nested Schema for `configuration.credentials.authenticate_via_o_auth`

Required:

- `access_token` (String, Sensitive) Access Token for making authenticated requests.
- `client_id` (String) The Client ID of your Salesloft developer application.
- `client_secret` (String, Sensitive) The Client Secret of your Salesloft developer application.
- `refresh_token` (String, Sensitive) The token for obtaining a new access token.
- `token_expiry_date` (String) The date-time when the access token should be refreshed.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_salesloft.my_airbyte_source_salesloft ""
```
