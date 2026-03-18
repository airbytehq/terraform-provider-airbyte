resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    content_owner_id      = "...my_content_owner_id..."
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "afa734e4-3571-11ec-991a-1e0031268139"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ddc4ab00-8822-4a78-bd4f-944dac4fd75d"
}