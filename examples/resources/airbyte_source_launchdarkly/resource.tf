resource "airbyte_source_launchdarkly" "my_source_launchdarkly" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "422849b5-8575-49fd-b9d7-4aa20ea69f1b"
  name          = "Jodi Marquardt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dd1b5a02-95b1-497b-bb02-27d625c3155f"
}