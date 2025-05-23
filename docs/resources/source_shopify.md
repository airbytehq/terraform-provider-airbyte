---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_shopify Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceShopify Resource
---

# airbyte_source_shopify (Resource)

SourceShopify Resource

## Example Usage

```terraform
resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 4
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id               = true
    job_checkpoint_interval                  = 484517
    job_product_variants_include_pres_prices = true
    job_termination_threshold                = 5282
    shop                                     = "my-store"
    start_date                               = "2021-05-19"
  }
  definition_id = "1a8f2c45-b7ec-4db1-8680-d2e228b3d43e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de6ea042-7883-4cc3-9786-89e9d969aa09"
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

- `shop` (String) The name of your Shopify store found in the URL. For example, if your URL was https://NAME.myshopify.com, then the name would be 'NAME' or 'NAME.myshopify.com'.

Optional:

- `bulk_window_in_days` (Number) Defines what would be a date range per single BULK Job. Default: 30
- `credentials` (Attributes) The authorization method to use to retrieve data from Shopify (see [below for nested schema](#nestedatt--configuration--credentials))
- `fetch_transactions_user_id` (Boolean) Defines which API type (REST/BULK) to use to fetch `Transactions` data. If you are a `Shopify Plus` user, leave the default value to speed up the fetch. Default: false
- `job_checkpoint_interval` (Number) The threshold, after which the single BULK Job should be checkpointed (min: 15k, max: 1M). Default: 100000
- `job_product_variants_include_pres_prices` (Boolean) If enabled, the `Product Variants` stream attempts to include `Presentment prices` field (may affect the performance). Default: true
- `job_termination_threshold` (Number) The max time in seconds, after which the single BULK Job should be `CANCELED` and retried. The bigger the value the longer the BULK Job is allowed to run. Default: 7200
- `start_date` (String) The date you would like to replicate data from. Format: YYYY-MM-DD. Any data before this date will not be replicated. Default: "2020-01-01"

<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Optional:

- `api_password` (Attributes) API Password Auth (see [below for nested schema](#nestedatt--configuration--credentials--api_password))
- `o_auth20` (Attributes) OAuth2.0 (see [below for nested schema](#nestedatt--configuration--credentials--o_auth20))

<a id="nestedatt--configuration--credentials--api_password"></a>
### Nested Schema for `configuration.credentials.api_password`

Required:

- `api_password` (String, Sensitive) The API Password for your private application in the `Shopify` store.


<a id="nestedatt--configuration--credentials--o_auth20"></a>
### Nested Schema for `configuration.credentials.o_auth20`

Optional:

- `access_token` (String, Sensitive) The Access Token for making authenticated requests.
- `client_id` (String, Sensitive) The Client ID of the Shopify developer application.
- `client_secret` (String, Sensitive) The Client Secret of the Shopify developer application.




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
terraform import airbyte_source_shopify.my_airbyte_source_shopify ""
```
