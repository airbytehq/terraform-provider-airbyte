resource "airbyte_source_concord" "my_source_concord" {
  configuration = {
    api_key = "...my_api_key..."
    env     = "api"
  }
  definition_id = "8df7b321-e9ea-4163-81e0-7f555a90150a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "104ee9b6-de1c-4f59-9cf7-ecdbfe0574b4"
}