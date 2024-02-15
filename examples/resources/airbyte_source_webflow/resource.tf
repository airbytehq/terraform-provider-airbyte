resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "4c2d04c6-ceb0-4e44-8965-9dbf6ecaf35c"
  name          = "Lorraine Predovic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "79d7e3dc-cb9f-4d6e-9ad7-470b8320ef50"
}