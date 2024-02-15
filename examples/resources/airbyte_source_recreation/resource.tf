resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "56ee294a-dbc5-4bd3-8078-9cf0b8d2c041"
  name          = "Ellen Funk"
  secret_id     = "...my_secret_id..."
  workspace_id  = "569fd64c-d2bc-4f08-a635-d7a8c386cecc"
}