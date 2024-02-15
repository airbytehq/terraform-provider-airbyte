resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "ef588ac5-48be-48a7-a9db-f52c79293e28"
  name          = "Miss Shannon Lakin I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "348b38fe-3b52-4011-a5b2-9252a784d2d0"
}