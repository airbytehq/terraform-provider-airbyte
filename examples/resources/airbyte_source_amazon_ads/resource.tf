resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    auth_type        = "oauth2.0"
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 3
    profiles = [
      6,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "EU"
    report_record_types = [
      "asins_keywords",
    ]
    source_type = "amazon-ads"
    start_date  = "2022-10-10"
    state_filter = [
      "archived",
    ]
  }
  name         = "Evelyn Bode"
  secret_id    = "...my_secret_id..."
  workspace_id = "2965bb8a-7202-4611-835e-139dbc2259b1"
}