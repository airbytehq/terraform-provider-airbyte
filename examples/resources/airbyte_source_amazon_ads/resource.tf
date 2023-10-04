resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 3
    marketplace_ids = [
      "...",
    ]
    profiles = [
      10,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    report_record_types = [
      "asins",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "archived",
    ]
  }
  name         = "Brett Wisozk IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "64a856a0-4170-4ff8-966d-c32335977b07"
}