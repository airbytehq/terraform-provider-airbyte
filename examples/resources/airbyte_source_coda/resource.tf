resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token  = "...my_auth_token..."
    source_type = "coda"
  }
  name         = "Nettie Wilkinson"
  secret_id    = "...my_secret_id..."
  workspace_id = "01c6ecbb-4e24-43cf-b89f-fafeda53e5ae"
}