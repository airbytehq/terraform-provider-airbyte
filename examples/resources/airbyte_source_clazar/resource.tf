resource "airbyte_source_clazar" "my_source_clazar" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
  }
  definition_id = "baef8e47-4905-488d-8e29-39574a681eea"
  name          = "Danielle Rice"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a1fb187d-3322-43d8-8bb9-9362d2f45974"
}