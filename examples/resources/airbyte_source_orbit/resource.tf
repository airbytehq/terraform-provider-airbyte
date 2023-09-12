resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "orbit"
    start_date  = "...my_start_date..."
    workspace   = "...my_workspace..."
  }
  name         = "Jo Greenholt V"
  secret_id    = "...my_secret_id..."
  workspace_id = "abfa2e76-1f0c-4a4d-856e-f1031e6899f0"
}