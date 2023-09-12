resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      source_monday_authorization_method_api_token = {
        api_token = "...my_api_token..."
        auth_type = "api_token"
      }
    }
    source_type = "monday"
  }
  name         = "Shirley Wisoky"
  secret_id    = "...my_secret_id..."
  workspace_id = "fd5fb6e9-1b9a-49f7-8846-e2c3309db053"
}