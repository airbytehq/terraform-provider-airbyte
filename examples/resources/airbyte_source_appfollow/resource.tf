resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  name         = "Ruby Becker"
  secret_id    = "...my_secret_id..."
  workspace_id = "3801c367-8d42-4b62-94a3-1a29aaf3c680"
}