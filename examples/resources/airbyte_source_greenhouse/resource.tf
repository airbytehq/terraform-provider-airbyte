resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a1d9c174-fee4-4145-962d-27576235e52b"
  name          = "Clifton Nader"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8fd2a7f9-40de-4c44-a216-dff8929e4d23"
}