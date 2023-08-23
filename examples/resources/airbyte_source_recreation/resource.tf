resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
    source_type     = "recreation"
  }
  name         = "David Deckow"
  secret_id    = "...my_secret_id..."
  workspace_id = "6c354aa4-32b4-47e1-b63c-5208c23e9802"
}