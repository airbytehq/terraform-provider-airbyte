resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "ab4c1bca-f66c-4128-a9f9-84d613828542"
  name          = "Wm Dickens"
  secret_id     = "...my_secret_id..."
  workspace_id  = "458facd1-771a-416f-bf1f-04aeebc306c4"
}