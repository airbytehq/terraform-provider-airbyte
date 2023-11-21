resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    channel_filter = [
      "...",
    ]
    credentials = {
      source_slack_api_token = {
        api_token = "...my_api_token..."
      }
    }
    join_channels   = true
    lookback_window = 14
    start_date      = "2017-01-25T00:00:00Z"
  }
  definition_id = "dd581ac6-4878-476f-8ad6-15bcace687b3"
  name          = "Ms. Marian Bergstrom"
  secret_id     = "...my_secret_id..."
  workspace_id  = "986a7b02-fd25-4c77-a7b3-6354281d3e7f"
}