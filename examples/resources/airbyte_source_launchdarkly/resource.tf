resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "launchdarkly"
  }
  name         = "Edith Dickens"
  secret_id    = "...my_secret_id..."
  workspace_id = "6bd8fe5d-00b9-479e-b203-87320590ccc1"
}