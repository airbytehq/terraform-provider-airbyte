resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "28527913-edfc-4f9c-9058-e69d20ee3e4c"
  name          = "Leo Hettinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "95e2f08e-b76e-4351-8ef2-0de4cfc332b4"
}