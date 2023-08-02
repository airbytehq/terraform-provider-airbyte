resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token  = "...my_auth_token..."
    source_type = "coda"
  }
  name         = "Paul Powlowski MD"
  secret_id    = "...my_secretId..."
  workspace_id = "f2dfe13d-b4f6-42cb-a3f8-941aebc0b80a"
}