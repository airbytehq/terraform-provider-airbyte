---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_mailchimp Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMailchimp Resource
---

# airbyte_source_mailchimp (Resource)

SourceMailchimp Resource

## Example Usage

```terraform
resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
      o_auth20 = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    start_date = "2020-01-01T00:00:00.000Z"
  }
  definition_id = "9bebd7b1-c88a-4dd4-aa37-8172eb64f49e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c255ad32-1802-4521-bc9b-94b258ea8fe1"
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
- `start_date` (String) The date from which you want to start syncing data for Incremental streams. Only records that have been created or modified since this date will be synced. If left blank, all data will by synced.

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `api_key` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--api_key))
- `o_auth20` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--o_auth20))

<a id="nestedatt--configuration--credentials--api_key"></a>
### Nested Schema for `configuration.credentials.api_key`

Required:

- `apikey` (String, Sensitive) Mailchimp API Key. See the <a href="https://docs.airbyte.com/integrations/sources/mailchimp">docs</a> for information on how to generate this key.


<a id="nestedatt--configuration--credentials--o_auth20"></a>
### Nested Schema for `configuration.credentials.o_auth20`

Required:

- `access_token` (String, Sensitive) An access token generated using the above client ID and secret.

Optional:

- `client_id` (String, Sensitive) The Client ID of your OAuth application.
- `client_secret` (String, Sensitive) The Client Secret of your OAuth application.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_mailchimp.my_airbyte_source_mailchimp ""
```
