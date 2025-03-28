---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_clockodo Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceClockodo Resource
---

# airbyte_source_clockodo (Resource)

SourceClockodo Resource

## Example Usage

```terraform
resource "airbyte_source_clockodo" "my_source_clockodo" {
  configuration = {
    api_key              = "...my_api_key..."
    email_address        = "...my_email_address..."
    external_application = "...my_external_application..."
    start_date           = "2022-08-30T23:32:03.943Z"
    years = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "a9559a11-7233-4025-9dc0-3212f03ceb1d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11979c58-601e-4fdb-8b08-8c747f00b5a3"
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

- `api_key` (String, Sensitive) API key to use. Find it in the 'Personal data' section of your Clockodo account.
- `email_address` (String) Your Clockodo account email address. Find it in your Clockodo account settings.
- `start_date` (String)
- `years` (List of String) 2024, 2025

Optional:

- `external_application` (String) Identification of the calling application, including the email address of a technical contact person. Format: [name of application or company];[email address]. Default: "Airbyte"


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
terraform import airbyte_source_clockodo.my_airbyte_source_clockodo ""
```
