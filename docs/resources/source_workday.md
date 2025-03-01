---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_workday Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceWorkday Resource
---

# airbyte_source_workday (Resource)

SourceWorkday Resource

## Example Usage

```terraform
resource "airbyte_source_workday" "my_source_workday" {
  configuration = {
    credentials = {
      report_based_streams = {
        password = "...my_password..."
        report_ids = [
          "{ \"see\": \"documentation\" }"
        ]
        username = "...my_username..."
      }
      restapi_streams = {
        access_token = "...my_access_token..."
        start_date   = "2024-10-26T07:00:00.000Z"
      }
    }
    host      = "...my_host..."
    tenant_id = "...my_tenant_id..."
  }
  definition_id = "caf3b67e-129c-4e9e-a530-2b6adcf4997d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "40a9f4d4-7bdd-4a7c-90bb-08fd63077df2"
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

- `credentials` (Attributes) Report Based Streams and REST API Streams use different methods of Authentication. Choose streams type you want to sync and provide needed credentials for them. (see [below for nested schema](#nestedatt--configuration--credentials))
- `host` (String)
- `tenant_id` (String)

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `report_based_streams` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--report_based_streams))
- `restapi_streams` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--restapi_streams))

<a id="nestedatt--configuration--credentials--report_based_streams"></a>
### Nested Schema for `configuration.credentials.report_based_streams`

Required:

- `password` (String, Sensitive)
- `report_ids` (List of String) Report IDs can be found by clicking the three dots on the right side of the report > Web Service > View URLs > in JSON url copy everything between Workday tenant/ and ?format=json.
- `username` (String)


<a id="nestedatt--configuration--credentials--restapi_streams"></a>
### Nested Schema for `configuration.credentials.restapi_streams`

Required:

- `access_token` (String, Sensitive) Follow the instructions in the "OAuth 2.0 in Postman - API Client for Integrations" article in the Workday community docs to obtain access token.

Optional:

- `start_date` (String) Rows after this date will be synced, default 2 years ago.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_workday.my_airbyte_source_workday ""
```
