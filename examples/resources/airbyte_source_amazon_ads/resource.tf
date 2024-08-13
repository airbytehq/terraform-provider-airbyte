resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 3
    marketplace_ids = [
      "...",
    ]
    profiles = [
      4,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    report_record_types = [
      "targets",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "archived",
    ]
  }
  definition_id = "849b0bdf-3d5c-4a96-8633-54ae1d23c3d1"
  name          = "Jaime Weimann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4df0d756-d8b0-4d90-9af9-186ab63a7b2e"
}