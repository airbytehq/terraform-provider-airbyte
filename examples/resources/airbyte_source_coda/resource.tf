resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "a6a3ab4d-4475-45b9-90e5-c999e89cbd0e"
  name          = "Emmett Christiansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7cc1fbec-883d-4a2f-acd2-cab29e0bc600"
}