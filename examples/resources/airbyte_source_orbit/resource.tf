resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "orbit"
    start_date  = "...my_start_date..."
    workspace   = "...my_workspace..."
  }
  name         = "Dr. Nancy Ferry"
  secret_id    = "...my_secret_id..."
  workspace_id = "899f0c20-01e2-42cd-95cc-0584a184d76d"
}