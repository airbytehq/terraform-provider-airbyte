resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "2381cdc2-e964-42f3-82fe-19c32edfee92"
  name          = "Kim Dickens"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3ad2c887-f28e-4f97-9a7b-102e5487915a"
}