---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_k6_cloud Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceK6Cloud Resource
---

# airbyte_source_k6_cloud (Resource)

SourceK6Cloud Resource

## Example Usage

```terraform
resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "13ed5606-ac59-4e7c-8aee-eb09ffd3753f"
  name          = "Francisco Kautzer I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "03ba1bd8-103c-4fb4-a284-9b585759fd79"
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

- `api_token` (String, Sensitive) Your API Token. See <a href="https://k6.io/docs/cloud/integrations/token/">here</a>. The key is case sensitive.


