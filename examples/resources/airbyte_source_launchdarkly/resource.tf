resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "4eb4b875-ea1f-4a63-b6c0-fac1403cfd91"
  name          = "Lynne Runte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ae1f1c37-b350-4ebb-b981-c89f963f1e61"
}