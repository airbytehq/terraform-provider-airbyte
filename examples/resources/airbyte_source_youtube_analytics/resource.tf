resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "3c013462-1866-4cf5-98db-d5ebee014e07"
  name          = "Oliver Smith"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f53d253d-b8b1-4e39-9437-be8f4cf797fa"
}