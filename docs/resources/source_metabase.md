---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_metabase Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMetabase Resource
---

# airbyte_source_metabase (Resource)

SourceMetabase Resource

## Example Usage

```terraform
resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "...my_username..."
  }
  definition_id = "d43c9538-9f19-48fa-839b-519d7ddc6528"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a6ca9f4-7b13-4377-aec7-a4e44e8ebd23"
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
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `instance_api_url` (String) URL to your metabase instance API
- `username` (String)

Optional:

- `password` (String, Sensitive)
- `session_token` (String, Sensitive) To generate your session token, you need to run the following command: ``` curl -X POST \
  -H "Content-Type: application/json" \
  -d '{"username": "person@metabase.com", "password": "fakepassword"}' \
  http://localhost:3000/api/session
``` Then copy the value of the `id` field returned by a successful call to that API.
Note that by default, sessions are good for 14 days and needs to be regenerated.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_metabase.my_airbyte_source_metabase ""
```
