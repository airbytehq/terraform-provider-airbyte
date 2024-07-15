resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "b03b315a-f19b-4c4a-9418-c27e2e49fbe8"
  name          = "Stella Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "48e30ccc-b1d3-49dd-bc64-9b7a58a56364"
}