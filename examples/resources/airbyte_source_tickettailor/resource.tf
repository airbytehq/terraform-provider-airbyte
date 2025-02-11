resource "airbyte_source_tickettailor" "my_source_tickettailor" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "5956a159-352b-43df-8a7d-9ef9b7dda4a2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5920f681-a2d3-4b9b-832b-c4f1b951bb35"
}