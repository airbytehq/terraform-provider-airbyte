resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    channel_filter = [
      "...",
    ]
    credentials = {
      api_token    = "...my_api_token..."
      option_title = "API Token Credentials"
    }
    join_channels   = false
    lookback_window = 14
    source_type     = "slack"
    start_date      = "2017-01-25T00:00:00Z"
  }
  name         = "Deborah Waters"
  workspace_id = "0ea41d1f-465e-4851-96ff-f73fdf54fdd5"
}