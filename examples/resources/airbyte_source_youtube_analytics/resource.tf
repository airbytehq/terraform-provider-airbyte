resource "airbyte_source_youtube_analytics" "my_source_youtubeanalytics" {
  configuration = {
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      client_id             = "...my_client_id..."
      client_secret         = "...my_client_secret..."
      refresh_token         = "...my_refresh_token..."
    }
  }
  definition_id = "9bfc35e9-0346-480b-8207-4084a44f8250"
  name          = "Delbert Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e137bba0-0e04-4662-b501-253647b50bf3"
}