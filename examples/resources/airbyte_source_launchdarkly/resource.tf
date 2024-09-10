resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "743bfb15-06e5-4d6d-ab8b-49c82f283fdf"
  name          = "Yvette Effertz MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3ef9cacc-879b-4a7a-8016-47dc7c271c50"
}