resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "535fff5d-1d34-4f0c-8e54-86a3a161dc53"
  name          = "Mrs. Glen Gottlieb"
  secret_id     = "...my_secret_id..."
  workspace_id  = "acb8b41d-5bf9-44a0-9397-d3dfd90aff66"
}