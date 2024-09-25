resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 10
    marketplace_ids = [
      "...",
    ]
    profiles = [
      9,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    report_record_types = [
      "targets",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "paused",
    ]
  }
  definition_id = "d1e5d369-0efc-46e8-a8b1-d2ddb5daa9ea"
  name          = "Howard Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e7b29c85-e6b8-4562-8652-e0ff83c21b51"
}