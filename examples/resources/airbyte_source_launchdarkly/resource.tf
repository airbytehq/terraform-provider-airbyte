resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "f96bb511-5e3c-48fc-b408-547953cd81a4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2969812-c02f-4568-94b3-e52d089166c6"
}