---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_rd_station_marketing Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceRdStationMarketing Resource
---

# airbyte_source_rd_station_marketing (Resource)

SourceRdStationMarketing Resource

## Example Usage

```terraform
resource "airbyte_source_rd_station_marketing" "my_source_rdstationmarketing" {
  configuration = {
    authorization = {
      sign_in_via_rd_station_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "cfcc1d3b-9e53-4c77-b1a3-15536cddcc21"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "145cc270-17ae-443b-9b3f-eeb29d3f1317"
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

- `start_date` (String) UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated. When specified and not None, then stream will behave as incremental

Optional:

- `authorization` (Attributes) Choose one of the possible authorization method (see [below for nested schema](#nestedatt--configuration--authorization))

<a id="nestedatt--configuration--authorization"></a>
### Nested Schema for `configuration.authorization`

Optional:

- `sign_in_via_rd_station_o_auth` (Attributes) (see [below for nested schema](#nestedatt--configuration--authorization--sign_in_via_rd_station_o_auth))

<a id="nestedatt--configuration--authorization--sign_in_via_rd_station_o_auth"></a>
### Nested Schema for `configuration.authorization.sign_in_via_rd_station_o_auth`

Optional:

- `client_id` (String, Sensitive) The Client ID of your RD Station developer application.
- `client_secret` (String, Sensitive) The Client Secret of your RD Station developer application
- `refresh_token` (String, Sensitive) The token for obtaining the new access token.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_rd_station_marketing.my_airbyte_source_rd_station_marketing ""
```
