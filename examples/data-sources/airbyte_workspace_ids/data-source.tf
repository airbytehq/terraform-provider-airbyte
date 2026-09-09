data "airbyte_workspace_ids" "all" {}

resource "airbyte_source_faker" "test" {
  # First workspace returned will be the default created by Airbyte when bootstrapped
  workspace_id = data.airbyte_workspace_ids.all.ids[0]
  # ...
}

