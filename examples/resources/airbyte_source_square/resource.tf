resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      source_square_authentication_api_key = {
        api_key   = "...my_api_key..."
        auth_type = "API Key"
      }
    }
    include_deleted_objects = false
    is_sandbox              = false
    source_type             = "square"
    start_date              = "2022-08-13"
  }
  name         = "Josephine Yundt"
  secret_id    = "...my_secret_id..."
  workspace_id = "681c5768-dce7-4424-89a2-15e08601489a"
}