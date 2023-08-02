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
    lookback_window = 14
    source_type     = "slack"
    start_date      = "2017-01-25T00:00:00Z"
  }
  name         = "Camille Smith"
  secret_id    = "...my_secretId..."
  workspace_id = "4fdd5ea9-5433-498d-afb4-2a8d63388e4d"
}