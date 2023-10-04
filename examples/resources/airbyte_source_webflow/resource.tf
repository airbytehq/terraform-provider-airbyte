resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    api_key = "a very long hex sequence"
    site_id = "a relatively long hex sequence"
  }
  name         = "Kathleen Bins"
  secret_id    = "...my_secret_id..."
  workspace_id = "c5491060-9be9-4a98-8e4b-07bcaf13ed56"
}