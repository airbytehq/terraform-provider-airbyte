resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
    configuration = {
        credentials = {
            client_id = "...my_client_id..."
            client_secret = "...my_client_secret..."
            refresh_token = "...my_refresh_token..."
        }
        source_type = "youtube-analytics"
    }
            name = "Mike Hansen"
            workspace_id = "e01bf33e-aab4-4540-aac1-704bf1cc9fc6"
        }