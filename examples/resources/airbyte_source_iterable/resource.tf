resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "iterable"
    start_date  = "2021-04-01T00:00:00Z"
  }
  name         = "Archie Jaskolski"
  secret_id    = "...my_secret_id..."
  workspace_id = "c4b425e9-9e62-434c-9f7b-79dfeb77a5c3"
}