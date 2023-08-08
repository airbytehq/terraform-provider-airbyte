resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "orbit"
    start_date  = "...my_start_date..."
    workspace   = "...my_workspace..."
  }
  name         = "Jackie Schmitt"
  secret_id    = "...my_secret_id..."
  workspace_id = "795ee65e-076c-4c7a-bf61-6ea5c7164193"
}