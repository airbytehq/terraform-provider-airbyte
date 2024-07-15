resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    channel_filter = [
      "...",
    ]
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
    include_private_channels = true
    join_channels            = true
    lookback_window          = 14
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "f0bc649f-e5b0-48c8-adc4-0ca1ab766397"
  name          = "Miss Beth Wunsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "331df025-a154-4586-87cd-fb558f87809d"
}