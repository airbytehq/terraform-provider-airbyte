resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "73d022a6-0873-47f9-b9cf-17c9c1c91886"
  name          = "Dr. Sheryl Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c35041fc-dcac-4222-a2ef-24d92369b1ff"
}