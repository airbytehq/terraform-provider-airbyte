resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "8b85f41c-f2ef-4d5e-9605-e9e4deda30dd"
  name          = "Sadie Yundt MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2fad058-4130-4837-93e5-de43c907f63c"
}