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
    include_private_channels = false
    join_channels            = true
    lookback_window          = 7
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "6f1b8331-df02-45a1-9458-6c7cdfb558f8"
  name          = "Kay Bauch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3d1fcf2b-6755-4110-90ec-6c18f2017e88"
}