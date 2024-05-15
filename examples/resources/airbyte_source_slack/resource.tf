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
  definition_id = "db3e1c88-3c55-4acc-a5c3-7529a15c3606"
  name          = "Harriet Kertzmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5716d2b2-65f2-4af5-afce-7bdd581ac648"
}