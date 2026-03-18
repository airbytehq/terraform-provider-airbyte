resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 3
    marketplace_ids = [
      "..."
    ]
    num_workers = 2
    profiles = [
      1
    ]
    refresh_token = "...my_refresh_token..."
    region        = "NA"
    start_date    = "2022-10-10"
  }
  definition_id = "c6b0a29e-1da9-4512-9002-7bfd0cba2246"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6beec71-8c3b-4cf7-87f9-463dd8bf8f4e"
}