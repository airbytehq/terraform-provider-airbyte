resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  name         = "Lucia Bergstrom"
  secret_id    = "...my_secret_id..."
  workspace_id = "7b350ebb-3981-4c89-b963-f1e6164cc878"
}