resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "2a37cc1f-bec8-483d-a2fe-cd2cab29e0bc"
  name          = "Lisa Barrows"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3cc123e8-783d-450d-8d2b-80c50dc344f6"
}