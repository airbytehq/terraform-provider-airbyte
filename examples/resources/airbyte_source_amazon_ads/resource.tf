resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 10
    marketplace_ids = [
      "...",
    ]
    profiles = [
      8,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    report_record_types = [
      "adGroups",
    ]
    start_date = "2022-10-22"
    state_filter = [
      "paused",
    ]
  }
  definition_id = "e1cc1931-3722-4140-a7ee-71b638bd648d"
  name          = "Mrs. Gail Lesch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "feb93d4b-bde9-4f2b-b80c-d3fe4ad28293"
}