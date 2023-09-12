resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
    source_type     = "recreation"
  }
  name         = "Taylor Kertzmann"
  secret_id    = "...my_secret_id..."
  workspace_id = "f0441d2c-3b80-4809-8373-e060459bebba"
}