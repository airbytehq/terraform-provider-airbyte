resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6b959e4e-758a-4c09-a271-19b95b60c98b"
  name          = "Mitchell Altenwerth"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab5561ce-1bb1-4cad-aa0e-328a3bd5563e"
}