resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "8f9d1baa-c6e0-45b1-a50c-14468d231cdd"
  name          = "Jordan Wunsch PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "deee1be4-e723-4eea-b419-bc59e04a869e"
}