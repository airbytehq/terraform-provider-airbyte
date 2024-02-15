resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 10
    marketplace_ids = [
      "...",
    ]
    profiles = [
      3,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "NA"
    report_record_types = [
      "asins",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "enabled",
    ]
  }
  definition_id = "945c4336-0526-4ae8-aa3c-4f287913b866"
  name          = "Willie Bayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1180fb2a-875a-41ca-990e-95bd1182a17e"
}