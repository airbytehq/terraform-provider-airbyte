---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_zonka_feedback Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceZonkaFeedback Resource
---

# airbyte_source_zonka_feedback (Resource)

SourceZonkaFeedback Resource

## Example Usage

```terraform
resource "airbyte_source_zonka_feedback" "my_source_zonkafeedback" {
  configuration = {
    auth_token = "...my_auth_token..."
    datacenter = "e"
  }
  definition_id = "5076e843-dbcb-431d-85e8-9e8fe58cf536"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5866054c-12ed-4ab8-931f-c0cc6814a666"
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

- `auth_token` (String, Sensitive) Auth token to use. Generate it by navigating to Company Settings > Developers > API in your Zonka Feedback account.
- `datacenter` (String) The identifier for the data center, such as 'us1' or 'e' for EU. must be one of ["us1", "e"]


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
terraform import airbyte_source_zonka_feedback.my_airbyte_source_zonka_feedback ""
```
