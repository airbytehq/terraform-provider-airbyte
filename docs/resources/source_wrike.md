---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_wrike Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceWrike Resource
---

# airbyte_source_wrike (Resource)

SourceWrike Resource

## Example Usage

```terraform
resource "airbyte_source_wrike" "my_source_wrike" {
  configuration = {
    access_token   = "...my_access_token..."
    start_date     = "2017-01-25T00:00:00Z"
    wrike_instance = "...my_wrike_instance..."
  }
  definition_id = "4e809546-36aa-49cb-8be0-32fbc5664fb1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "26c5ac5f-c619-4257-b95d-47e14cbf19c2"
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

- `access_token` (String, Sensitive) Permanent access token. You can find documentation on how to acquire a permanent access token  <a href="https://developers.wrike.com/oauth-20-authorization/">here</a>

Optional:

- `start_date` (String) UTC date and time in the format 2017-01-25T00:00:00Z. Only comments after this date will be replicated.
- `wrike_instance` (String) Wrike's instance such as `app-us2.wrike.com`. Default: "app-us2.wrike.com"


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
terraform import airbyte_source_wrike.my_airbyte_source_wrike ""
```
