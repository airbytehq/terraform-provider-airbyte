resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "be84753d-48e3-40cc-8b1d-39ddfc649b7a"
  name          = "Cassandra O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3641fd33-8f32-4285-acd8-8e7e494b9e58"
}