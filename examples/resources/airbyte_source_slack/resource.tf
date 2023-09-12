resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    channel_filter = [
      "...",
    ]
    credentials = {
      source_slack_authentication_mechanism_api_token = {
        api_token    = "...my_api_token..."
        option_title = "API Token Credentials"
      }
    }
    join_channels   = false
    lookback_window = 7
    source_type     = "slack"
    start_date      = "2017-01-25T00:00:00Z"
  }
  name         = "Dr. Jamie Wintheiser"
  secret_id    = "...my_secret_id..."
  workspace_id = "af15920c-90d1-4b49-81f2-bd89c8a32639"
}