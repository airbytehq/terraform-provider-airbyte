resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token  = "...my_auth_token..."
    source_type = "coda"
  }
  name         = "Micheal Cassin"
  workspace_id = "2e550557-56f5-4d56-90bd-0af2dfe13db4"
}