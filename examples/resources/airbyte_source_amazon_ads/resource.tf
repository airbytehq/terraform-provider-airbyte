resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 10
    marketplace_ids = [
      "...",
    ]
    profiles = [
      4,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "NA"
    report_record_types = [
      "keywords",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "archived",
    ]
  }
  definition_id = "3879ec56-6b1d-41d8-bb57-bf001ddb3cf0"
  name          = "Hazel Stehr"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7d201b0d-069b-4b26-a6b9-f25aa9f8c7d4"
}