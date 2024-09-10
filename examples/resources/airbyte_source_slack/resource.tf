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
  definition_id = "894bdd98-fe3f-492c-86a9-aa72702875ab"
  name          = "Everett Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "98d79666-080f-43ec-ae3c-b491ea7992cd"
}