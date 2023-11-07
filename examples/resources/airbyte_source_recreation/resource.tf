resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  name         = "Krista Reilly"
  secret_id    = "...my_secret_id..."
  workspace_id = "00caee12-c4e6-45b5-be54-a27b617a012e"
}