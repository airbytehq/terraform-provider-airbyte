resource "airbyte_source_blogger" "my_source_blogger" {
  configuration = {
    client_id            = "...my_client_id..."
    client_refresh_token = "...my_client_refresh_token..."
    client_secret        = "...my_client_secret..."
  }
  definition_id = "468777b6-d30d-4c68-b7b5-ac01693d889d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d7d409fa-bef7-4eb9-b775-edd5d9fcc403"
}