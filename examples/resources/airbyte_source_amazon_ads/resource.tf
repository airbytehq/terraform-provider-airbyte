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
      "asins_targets",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "enabled",
    ]
  }
  definition_id = "517930ed-8d43-4c0d-abba-6ef9fc3c3744"
  name          = "Bryant Christiansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e57aa673-d282-459f-8c22-0e39e10d6ef0"
}