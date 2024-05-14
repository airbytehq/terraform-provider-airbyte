resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "9b799d63-199b-4d6b-868c-85ec21a9ab56"
  name          = "Tabitha Braun"
  secret_id     = "...my_secret_id..."
  workspace_id  = "77e51fa7-73fc-4f1a-8306-e082909d97bf"
}