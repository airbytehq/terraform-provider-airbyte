resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    end_date      = "2022-01-30"
    refresh_token = "...my_refresh_token..."
    source_type   = "snapchat-marketing"
    start_date    = "2022-01-01"
  }
  name         = "Hannah MacGyver"
  secret_id    = "...my_secret_id..."
  workspace_id = "c1954545-e955-4dcc-985e-a4901c7c43ad"
}