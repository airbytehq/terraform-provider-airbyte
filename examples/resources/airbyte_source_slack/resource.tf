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
    join_channels   = true
    lookback_window = 14
    source_type     = "slack"
    start_date      = "2017-01-25T00:00:00Z"
  }
  name         = "Eduardo Gottlieb"
  secret_id    = "...my_secret_id..."
  workspace_id = "43664a8f-0af8-4c69-9d73-2d9fbaf9476a"
}