resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "277cc3f8-b558-4609-821a-eb821b00a3f7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ddc4ab00-8822-4a78-bd4f-944dac4fd75d"
}