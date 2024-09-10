resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "14c65ed7-0eb1-47cb-8fc2-4002ca0d0171"
  name          = "Ollie Cummerata"
  secret_id     = "...my_secret_id..."
  workspace_id  = "28dde04a-9ce3-4be5-bbfa-46127442775e"
}