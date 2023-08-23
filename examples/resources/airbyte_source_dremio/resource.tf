resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key     = "...my_api_key..."
    base_url    = "...my_base_url..."
    source_type = "dremio"
  }
  name         = "Doug Hammes"
  secret_id    = "...my_secret_id..."
  workspace_id = "cabd905a-972e-4056-b282-27b2d309470b"
}