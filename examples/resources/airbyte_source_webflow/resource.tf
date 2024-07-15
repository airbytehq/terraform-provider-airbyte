resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "f2f57219-578f-4bbe-9226-a954fff93d12"
  name          = "Bryan McKenzie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e90b9169-fb30-4db2-afb2-1ef2bc48bf07"
}