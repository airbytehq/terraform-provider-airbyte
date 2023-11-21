resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "57111ac6-1dff-4a69-be71-43a3e9a244d7"
  name          = "Lucas Breitenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6e1cc19-3137-4221-8027-ee71b638bd64"
}