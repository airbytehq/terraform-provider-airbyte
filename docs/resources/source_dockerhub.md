---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_dockerhub Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceDockerhub Resource
---

# airbyte_source_dockerhub (Resource)

SourceDockerhub Resource

## Example Usage

```terraform
resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "0a2cef78-1247-45bc-a9a4-804a9e0ddc31"
  name          = "Katie Powlowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fd5d6c69-da54-497a-9d71-ffdea586a097"
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

- `docker_username` (String) Username of DockerHub person or organization (for https://hub.docker.com/v2/repositories/USERNAME/ API call)


