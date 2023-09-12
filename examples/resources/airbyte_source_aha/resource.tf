resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "aha"
    url         = "...my_url..."
  }
  name         = "Van Bergnaum"
  secret_id    = "...my_secret_id..."
  workspace_id = "a3383c2b-eb47-4737-bc8d-72f64d1db1f2"
}