resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    api_key     = "a very long hex sequence"
    site_id     = "a relatively long hex sequence"
    source_type = "webflow"
  }
  name         = "Jennifer Johnson"
  secret_id    = "...my_secret_id..."
  workspace_id = "965b711d-08cf-488e-89f7-b99a550a656e"
}