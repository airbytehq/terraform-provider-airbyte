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
    join_channels   = false
    lookback_window = 14
    start_date      = "2017-01-25T00:00:00Z"
  }
  definition_id = "b6a93532-6188-42dc-aea3-77e2f3a67448"
  name          = "Billie Murphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b04beae9-e175-4304-865f-646723901f87"
}