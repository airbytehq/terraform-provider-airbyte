resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    source_type = "youtube-analytics"
  }
  name         = "Clark McGlynn"
  secret_id    = "...my_secretId..."
  workspace_id = "61aae5eb-5f0c-4492-b574-4d08a2267aae"
}