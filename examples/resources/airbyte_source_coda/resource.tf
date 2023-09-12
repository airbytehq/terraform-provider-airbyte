resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token  = "...my_auth_token..."
    source_type = "coda"
  }
  name         = "Lila Harris II"
  secret_id    = "...my_secret_id..."
  workspace_id = "5756f5d5-6d0b-4d0a-b2df-e13db4f62cba"
}