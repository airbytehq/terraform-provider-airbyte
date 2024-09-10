resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "5714db07-d769-4873-b386-b53a479a0805"
  name          = "Emmett Bruen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3bf9b799-d631-499b-96b4-68c85ec21a9a"
}