---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_plausible Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePlausible Resource
---

# airbyte_source_plausible (Resource)

SourcePlausible Resource

## Example Usage

```terraform
resource "airbyte_source_plausible" "my_source_plausible" {
  configuration = {
    api_key    = "...my_api_key..."
    api_url    = "https://plausible.example.com/api/v1/stats"
    site_id    = "airbyte.com"
    start_date = "YYYY-MM-DD"
  }
  definition_id = "937af74f-fa25-43ac-a8a4-b4cb2a71cff5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fc6bfb72-cbc1-4b9e-9a77-cf31c792e631"
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

- `api_key` (String, Sensitive) Plausible API Key. See the <a href="https://plausible.io/docs/stats-api">docs</a> for information on how to generate this key.
- `site_id` (String) The domain of the site you want to retrieve data for. Enter the name of your site as configured on Plausible, i.e., excluding "https://" and "www". Can be retrieved from the 'domain' field in your Plausible site settings.

Optional:

- `api_url` (String) The API URL of your plausible instance. Change this if you self-host plausible. The default is https://plausible.io/api/v1/stats
- `start_date` (String) Start date for data to retrieve, in ISO-8601 format.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_plausible.my_airbyte_source_plausible ""
```
