---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_pubsub Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationPubsub Resource
---

# airbyte_destination_pubsub (Resource)

DestinationPubsub Resource

## Example Usage

```terraform
resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 10
    batching_element_count_threshold = 10
    batching_enabled                 = true
    batching_request_bytes_threshold = 5
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "df92d7e3-59fc-4984-811b-a60c95e88972"
  name          = "...my_name..."
  workspace_id  = "d57f528a-f49b-4b8c-91c8-620eafc0353a"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the destination e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided. Requires replacement if changed.

### Read-Only

- `created_at` (Number)
- `destination_id` (String)
- `destination_type` (String)
- `resource_allocation` (Attributes) actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level. (see [below for nested schema](#nestedatt--resource_allocation))

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `credentials_json` (String, Sensitive) The contents of the JSON service account key. Check out the <a href="https://docs.airbyte.com/integrations/destinations/pubsub">docs</a> if you need help generating this key.
- `project_id` (String) The GCP project ID for the project containing the target PubSub.
- `topic_id` (String) The PubSub topic ID in the given GCP project ID.

Optional:

- `batching_delay_threshold` (Number) Number of ms before the buffer is flushed. Default: 1
- `batching_element_count_threshold` (Number) Number of messages before the buffer is flushed. Default: 1
- `batching_enabled` (Boolean) If TRUE messages will be buffered instead of sending them one by one. Default: false
- `batching_request_bytes_threshold` (Number) Number of bytes before the buffer is flushed. Default: 1
- `ordering_enabled` (Boolean) If TRUE PubSub publisher will have <a href="https://cloud.google.com/pubsub/docs/ordering">message ordering</a> enabled. Every message will have an ordering key of stream. Default: false


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
terraform import airbyte_destination_pubsub.my_airbyte_destination_pubsub ""
```
