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
    join_channels            = false
    lookback_window          = 7
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "0cbfe39d-f03e-4297-96f5-cf39b34f9589"
  name          = "Ms. Miguel Crona"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f32822b8-2a15-49eb-82b7-c1d3540fbbe2"
}