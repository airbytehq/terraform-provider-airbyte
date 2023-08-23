resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    source_type = "youtube-analytics"
  }
  name         = "Dr. Kara Lowe"
  secret_id    = "...my_secret_id..."
  workspace_id = "10f8c23d-f931-4da3-adb5-1fad94acc943"
}