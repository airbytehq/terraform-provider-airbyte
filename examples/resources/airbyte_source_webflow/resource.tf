resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    api_key     = "a very long hex sequence"
    site_id     = "a relatively long hex sequence"
    source_type = "webflow"
  }
  name         = "Taylor Paucek"
  secret_id    = "...my_secret_id..."
  workspace_id = "fded84a3-5a41-4238-a1a7-35ac26ae33be"
}