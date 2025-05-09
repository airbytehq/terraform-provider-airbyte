resource "airbyte_source_linear" "my_source_linear" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "001edfba-4e38-4584-916d-2c2cdfb49560"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "38f0e3bf-529e-4876-b825-5d4998c63cda"
}