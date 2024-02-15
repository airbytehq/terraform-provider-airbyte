resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "c9bce387-d664-444a-9867-97a763e10f99"
  name          = "Donald Beahan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9e49484a-7485-4520-a44a-ee427f93df9b"
}