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
    join_channels            = false
    lookback_window          = 7
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "4fb97610-a4d0-4de9-9eaa-4a70c9cb870e"
  name          = "Mrs. Wendell Lueilwitz DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "39e74506-57bf-4d1c-b4db-2aae6c20ac9c"
}