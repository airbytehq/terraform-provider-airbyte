resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      source_square_authentication_api_key = {
        api_key   = "...my_api_key..."
        auth_type = "API Key"
      }
    }
    include_deleted_objects = true
    is_sandbox              = false
    source_type             = "square"
    start_date              = "2022-10-16"
  }
  name         = "Mrs. Maggie Breitenberg"
  secret_id    = "...my_secretId..."
  workspace_id = "82bd7ed5-6507-4621-858f-4d7396564c20"
}