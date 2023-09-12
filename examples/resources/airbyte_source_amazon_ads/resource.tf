resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    auth_type        = "oauth2.0"
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 10
    marketplace_ids = [
      "...",
    ]
    profiles = [
      6,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "EU"
    report_record_types = [
      "asins_targets",
    ]
    source_type = "amazon-ads"
    start_date  = "2022-10-10"
    state_filter = [
      "archived",
    ]
  }
  name         = "Dan Towne"
  secret_id    = "...my_secret_id..."
  workspace_id = "d02bae0b-e2d7-4822-99e3-ea4b5197f924"
}