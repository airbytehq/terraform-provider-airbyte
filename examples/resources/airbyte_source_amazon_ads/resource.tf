resource "airbyte_source_amazon_ads" "my_source_amazonads" {
  configuration = {
    client_id        = "...my_client_id..."
    client_secret    = "...my_client_secret..."
    look_back_window = 3
    marketplace_ids = [
      "...",
    ]
    profiles = [
      2,
    ]
    refresh_token = "...my_refresh_token..."
    region        = "FE"
    report_record_types = [
      "adGroups",
    ]
    start_date = "2022-10-10"
    state_filter = [
      "paused",
    ]
  }
  definition_id = "34df0d75-6d8b-40d9-8daf-9186ab63a7b2"
  name          = "Chris Littel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec566b1d-1d8b-4b57-bf00-1ddb3cf074d6"
}