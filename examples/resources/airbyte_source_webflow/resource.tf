resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "d12e392c-e90b-4916-9fb3-0db2efb21ef2"
  name          = "Israel Gleason"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f07f2e77-2136-4664-afa9-b2db7532b28c"
}