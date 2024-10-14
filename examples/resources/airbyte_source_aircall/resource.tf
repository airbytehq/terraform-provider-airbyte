resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "f2d6765e-6635-44d4-ae8c-8380f4c57950"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e53fe6b3-92c0-44af-8136-cbb3bc59d66b"
}