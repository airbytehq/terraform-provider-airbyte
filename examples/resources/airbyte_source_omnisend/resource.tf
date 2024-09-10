resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "f724d1e0-e7e7-408b-9f81-5bf9f1370c28"
  name          = "Wayne Klein"
  secret_id     = "...my_secret_id..."
  workspace_id  = "25e4ee4a-51ab-4e7b-be4e-8da5f867ba5c"
}