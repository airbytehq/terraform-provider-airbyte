resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    api_key     = "a very long hex sequence"
    site_id     = "a relatively long hex sequence"
    source_type = "webflow"
  }
  name         = "Adrian Schulist"
  workspace_id = "c9b4caa1-cfe9-4e15-9f90-3907f3783198"
}