resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "9bb7b45d-9607-443b-824b-c119f8fb36f9"
  name          = "Ms. Marie Cummings"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49978c5f-0c0b-470c-9d08-d732ef691ae1"
}