resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "03ba1bd8-103c-4fb4-a284-9b585759fd79"
  name          = "Neil Gleichner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20ea69f1-b1a9-475d-91b5-a0295b197bbb"
}