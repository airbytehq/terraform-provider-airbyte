resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    auth_type        = "oauth2.0"
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 10
    profiles = [
      1,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    report_record_types = [
      "keywords",
    ]
    source_type = "amazon-ads"
    start_date  = "2022-10-10"
    state_filter = [
      "paused",
    ]
  }
  name         = "Harold Boyer"
  secret_id    = "...my_secret_id..."
  workspace_id = "b99545fc-95fa-4889-b0e1-89dbb30fcb33"
}