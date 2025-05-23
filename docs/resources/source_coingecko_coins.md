---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_coingecko_coins Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceCoingeckoCoins Resource
---

# airbyte_source_coingecko_coins (Resource)

SourceCoingeckoCoins Resource

## Example Usage

```terraform
resource "airbyte_source_coingecko_coins" "my_source_coingeckocoins" {
  configuration = {
    api_key     = "...my_api_key..."
    coin_id     = "...my_coin_id..."
    days        = "1"
    end_date    = "2022-06-02"
    start_date  = "2021-05-10"
    vs_currency = "...my_vs_currency..."
  }
  definition_id = "d33b3a56-3c24-45e0-9811-d789944a52d3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "100ffefc-7165-4172-a963-245083ec5486"
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

- `coin_id` (String) CoinGecko coin ID (e.g. bitcoin). Can be retrieved from the
`/coins/list` endpoint.
- `start_date` (String) The start date for the historical data stream in dd-mm-yyyy format.
- `vs_currency` (String) The target currency of market data (e.g. usd, eur, jpy, etc.)

Optional:

- `api_key` (String, Sensitive) API Key (for pro users)
- `days` (String) The number of days of data for market chart. Default: "30"; must be one of ["1", "7", "14", "30", "90", "180", "365", "max"]
- `end_date` (String) The end date for the historical data stream in dd-mm-yyyy format.


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
terraform import airbyte_source_coingecko_coins.my_airbyte_source_coingecko_coins ""
```
