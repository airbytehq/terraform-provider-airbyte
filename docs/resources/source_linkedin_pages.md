---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_linkedin_pages Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceLinkedinPages Resource
---

# airbyte_source_linkedin_pages (Resource)

SourceLinkedinPages Resource

## Example Usage

```terraform
resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2021-01-19T08:22:37.981Z"
    time_granularity_type = "MONTH"
  }
  definition_id = "b7320995-89cb-4a35-929d-c298cd64bbd8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "25451ff1-20df-4bf1-bbc0-fffa15035a0e"
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
- `resource_allocation` (Attributes) actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level. (see [below for nested schema](#nestedatt--resource_allocation))
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `org_id` (String, Sensitive) Specify the Organization ID

Optional:

- `credentials` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials))
- `start_date` (String) Start date for getting metrics per time period. Must be atmost 12 months before the request date (UTC) and atleast 2 days prior to the request date (UTC). See https://bit.ly/linkedin-pages-date-rules {{ "\n" }} {{ response.errorDetails }}. Default: "2023-01-01T00:00:00Z"
- `time_granularity_type` (String) Granularity of the statistics for metrics per time period. Must be either "DAY" or "MONTH". Default: "DAY"; must be one of ["DAY", "MONTH"]

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `access_token` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--access_token))
- `o_auth20` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--o_auth20))

<a id="nestedatt--configuration--credentials--access_token"></a>
### Nested Schema for `configuration.credentials.access_token`

Required:

- `access_token` (String, Sensitive) The token value generated using the LinkedIn Developers OAuth Token Tools. See the <a href="https://docs.airbyte.com/integrations/sources/linkedin-pages/">docs</a> to obtain yours.


<a id="nestedatt--configuration--credentials--o_auth20"></a>
### Nested Schema for `configuration.credentials.o_auth20`

Required:

- `client_id` (String, Sensitive) The client ID of the LinkedIn developer application.
- `client_secret` (String, Sensitive) The client secret of the LinkedIn developer application.
- `refresh_token` (String, Sensitive) The token value generated using the LinkedIn Developers OAuth Token Tools. See the <a href="https://docs.airbyte.com/integrations/sources/linkedin-pages/">docs</a> to obtain yours.




<a id="nestedatt--resource_allocation"></a>
### Nested Schema for `resource_allocation`

Read-Only:

- `default` (Attributes) optional resource requirements to run workers (blank for unbounded allocations) (see [below for nested schema](#nestedatt--resource_allocation--default))
- `job_specific` (Attributes List) (see [below for nested schema](#nestedatt--resource_allocation--job_specific))

<a id="nestedatt--resource_allocation--default"></a>
### Nested Schema for `resource_allocation.default`

Read-Only:

- `cpu_limit` (String)
- `cpu_request` (String)
- `ephemeral_storage_limit` (String)
- `ephemeral_storage_request` (String)
- `memory_limit` (String)
- `memory_request` (String)


<a id="nestedatt--resource_allocation--job_specific"></a>
### Nested Schema for `resource_allocation.job_specific`

Read-Only:

- `job_type` (String) enum that describes the different types of jobs that the platform runs. must be one of ["get_spec", "check_connection", "discover_schema", "sync", "reset_connection", "connection_updater", "replicate"]
- `resource_requirements` (Attributes) optional resource requirements to run workers (blank for unbounded allocations) (see [below for nested schema](#nestedatt--resource_allocation--job_specific--resource_requirements))

<a id="nestedatt--resource_allocation--job_specific--resource_requirements"></a>
### Nested Schema for `resource_allocation.job_specific.resource_requirements`

Read-Only:

- `cpu_limit` (String)
- `cpu_request` (String)
- `ephemeral_storage_limit` (String)
- `ephemeral_storage_request` (String)
- `memory_limit` (String)
- `memory_request` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_linkedin_pages.my_airbyte_source_linkedin_pages ""
```
