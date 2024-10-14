resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "b0847089-29a5-4c32-bb62-d255b7e78ce7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2969812-c02f-4568-94b3-e52d089166c6"
}