resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "3397c204-75fa-4ade-ba48-1e413dd760cc"
  name          = "Dr. Sandy Ullrich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75ee978f-160f-4457-86ac-11eb0243724c"
}