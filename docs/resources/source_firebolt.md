---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_firebolt Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceFirebolt Resource
---

# airbyte_source_firebolt (Resource)

SourceFirebolt Resource

## Example Usage

```terraform
resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "a7fcdac6-3878-454b-a9c4-2e8b9a534c06"
  name          = "Merle Hills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e94eff21-1adf-4c72-9dd1-f80239a92966"
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

- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `account` (String) Firebolt account to login.
- `client_id` (String) Firebolt service account ID.
- `client_secret` (String) Firebolt secret, corresponding to the service account ID.
- `database` (String) The database to connect to.
- `engine` (String) Engine name to connect to.

Optional:

- `host` (String) The host name of your Firebolt database.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_firebolt.my_airbyte_source_firebolt ""
```
