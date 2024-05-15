resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "04e32dc6-49b6-4bc8-a2c7-d0de0f8a2b57"
  name          = "Dewey Schuster"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e75111f-d061-42ff-93df-11978b385957"
}