resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    source_type = "youtube-analytics"
  }
  name         = "Tommy Rippin"
  secret_id    = "...my_secret_id..."
  workspace_id = "707f06b2-8ecc-4864-9238-6f62c969c4cc"
}