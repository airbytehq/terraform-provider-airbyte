---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_square Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceSquare Resource
---

# airbyte_source_square (Resource)

SourceSquare Resource

## Example Usage

```terraform
resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      oauth_authentication = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    include_deleted_objects = true
    is_sandbox              = false
    start_date              = "2022-12-06"
  }
  definition_id = "62738d12-88d2-4454-b175-22fec285b6ec"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "873caa16-3a7f-42ab-8efd-b0ccb2d1796d"
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

Optional:

- `credentials` (Attributes) Choose how to authenticate to Square. (see [below for nested schema](#nestedatt--configuration--credentials))
- `include_deleted_objects` (Boolean) In some streams there is an option to include deleted objects (Items, Categories, Discounts, Taxes). Default: false
- `is_sandbox` (Boolean) Determines whether to use the sandbox or production environment. Default: false
- `start_date` (String) UTC date in the format YYYY-MM-DD. Any data before this date will not be replicated. If not set, all data will be replicated. Default: "2021-01-01"

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `api_key` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--api_key))
- `oauth_authentication` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--oauth_authentication))

<a id="nestedatt--configuration--credentials--api_key"></a>
### Nested Schema for `configuration.credentials.api_key`

Required:

- `api_key` (String, Sensitive) The API key for a Square application


<a id="nestedatt--configuration--credentials--oauth_authentication"></a>
### Nested Schema for `configuration.credentials.oauth_authentication`

Required:

- `client_id` (String, Sensitive) The Square-issued ID of your application
- `client_secret` (String, Sensitive) The Square-issued application secret for your application
- `refresh_token` (String, Sensitive) A refresh token generated using the above client ID and secret




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
terraform import airbyte_source_square.my_airbyte_source_square ""
```
