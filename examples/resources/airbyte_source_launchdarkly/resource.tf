resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "launchdarkly"
  }
  name         = "Darren Monahan"
  secret_id    = "...my_secret_id..."
  workspace_id = "20387320-590c-4cc1-8964-00313b3e5044"
}