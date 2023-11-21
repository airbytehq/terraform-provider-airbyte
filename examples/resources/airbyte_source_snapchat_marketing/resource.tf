resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    end_date      = "2022-01-30"
    refresh_token = "...my_refresh_token..."
    start_date    = "2022-01-01"
  }
  definition_id = "8a6950f0-007e-4330-87d9-5358a56819d2"
  name          = "Rudy Toy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d7e3d24-dfd3-4d51-a342-f997d059d38a"
}