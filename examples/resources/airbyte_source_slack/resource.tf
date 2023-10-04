resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    channel_filter = [
      "...",
    ]
    credentials = {
      source_slack_authentication_mechanism_api_token = {
        api_token = "...my_api_token..."
      }
    }
    join_channels   = false
    lookback_window = 7
    start_date      = "2017-01-25T00:00:00Z"
  }
  name         = "Ebony Daniel"
  secret_id    = "...my_secret_id..."
  workspace_id = "a49853a6-9509-435a-9536-c5004734e30b"
}