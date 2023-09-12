resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret  = "...my_api_secret..."
    source_type = "appfollow"
  }
  name         = "Regina Huel"
  secret_id    = "...my_secret_id..."
  workspace_id = "db35ff2e-4b27-4537-a8cd-9e7319c177d5"
}