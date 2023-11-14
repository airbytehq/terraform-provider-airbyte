---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_klarna Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceKlarna DataSource
---

# airbyte_source_klarna (Data Source)

SourceKlarna DataSource

## Example Usage

```terraform
data "airbyte_source_klarna" "my_source_klarna" {
  secret_id = "...my_secret_id..."
  source_id = "...my_source_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `source_id` (String)

### Optional

- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow.

### Read-Only

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String)
- `workspace_id` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Read-Only:

- `password` (String) A string which is associated with your Merchant ID and is used to authorize use of Klarna's APIs (https://developers.klarna.com/api/#authentication)
- `playground` (Boolean) Propertie defining if connector is used against playground or production environment
- `region` (String) must be one of ["eu", "us", "oc"]
Base url region (For playground eu https://docs.klarna.com/klarna-payments/api/payments-api/#tag/API-URLs). Supported 'eu', 'us', 'oc'
- `source_type` (String) must be one of ["klarna"]
- `username` (String) Consists of your Merchant ID (eid) - a unique number that identifies your e-store, combined with a random string (https://developers.klarna.com/api/#authentication)

