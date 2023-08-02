resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "launchdarkly"
  }
  name         = "Pedro Kovacek"
  secret_id    = "...my_secretId..."
  workspace_id = "501357e4-4f51-4f8b-884c-3197e193a245"
}