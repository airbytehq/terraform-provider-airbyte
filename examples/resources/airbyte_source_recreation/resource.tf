resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
    source_type     = "recreation"
  }
  name         = "Joe Stamm"
  secret_id    = "...my_secret_id..."
  workspace_id = "b9434645-d030-484f-bba5-cceff5cb01fe"
}