resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "braze"
    start_date  = "2021-09-11"
    url         = "...my_url..."
  }
  name         = "Jermaine Hettinger"
  workspace_id = "4762799b-fbbe-4694-9fb2-bb4ecae6c3d5"
}