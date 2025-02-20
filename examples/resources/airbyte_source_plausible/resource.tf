resource "airbyte_source_plausible" "my_source_plausible" {
  configuration = {
    api_key    = "...my_api_key..."
    api_url    = "https://plausible.example.com/api/v1/stats"
    site_id    = "airbyte.com"
    start_date = "YYYY-MM-DD"
  }
  definition_id = "937af74f-fa25-43ac-a8a4-b4cb2a71cff5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fc6bfb72-cbc1-4b9e-9a77-cf31c792e631"
}