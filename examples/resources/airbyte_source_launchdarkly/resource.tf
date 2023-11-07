resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  name         = "Rosalie Reynolds PhD"
  secret_id    = "...my_secret_id..."
  workspace_id = "9a05e994-ace4-41dc-9b42-f2a228e88647"
}