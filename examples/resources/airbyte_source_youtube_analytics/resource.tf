resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "e07eadc6-f53d-4253-9b8b-1e39d437be8f"
  name          = "Vicky Welch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7fa8ae01-2beb-4a22-8996-41ef630f5d87"
}