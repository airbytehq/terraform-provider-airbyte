resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "5b197bbb-0227-4d62-9c31-55f731c6e6bc"
  name          = "Kara O'Keefe III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6aee7892-5477-4f38-bc53-022ba4aed299"
}