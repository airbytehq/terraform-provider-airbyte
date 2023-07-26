resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "instagram"
    start_date   = "2017-01-25T00:00:00Z"
  }
  name         = "Sidney Simonis"
  workspace_id = "a6a61efa-2198-4258-bd0a-9eba47f7d3ef"
}