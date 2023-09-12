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
    start_date              = "2022-02-01"
  }
  name         = "Miss Bruce Gibson"
  secret_id    = "...my_secret_id..."
  workspace_id = "548f88f8-f1bf-40bc-8e1f-206d5d831d00"
}