resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id      = "...my_api_id..."
    api_token   = "...my_api_token..."
    source_type = "aircall"
    start_date  = "2022-03-01T00:00:00.000Z"
  }
  name         = "Martha Bashirian"
  secret_id    = "...my_secret_id..."
  workspace_id = "1e96349e-1cf9-4e06-a3a4-37000ae6b6bc"
}