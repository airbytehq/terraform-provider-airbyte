resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 3
    marketplace_ids = [
      "..."
    ]
    profiles = [
      1
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    start_date    = "2022-10-10"
  }
  definition_id = "af6454d1-eef9-48c7-951f-d90f8c67b58a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6beec71-8c3b-4cf7-87f9-463dd8bf8f4e"
}