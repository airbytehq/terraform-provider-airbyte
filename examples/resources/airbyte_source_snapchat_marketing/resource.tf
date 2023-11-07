resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    end_date      = "2022-01-30"
    refresh_token = "...my_refresh_token..."
    start_date    = "2022-01-01"
  }
  name         = "Ernestine Parker Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "fb0fc527-30b3-4999-8a41-e4a8985c78fa"
}