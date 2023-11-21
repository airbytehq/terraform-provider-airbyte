resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 2
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "526ae8aa-3c4f-4287-913b-8668105e1180"
  name          = "Dominic Dach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75a1ca19-0e95-4bd1-982a-17eb0af63def"
}